pipeline {
    agent any
    stages {      
        stage ('Checkout') {
            steps {
               git url: 'https://github.com/kuberguy/helloworld.git'
               //def mvnHome = tool 'M3'
            }
        }

        stage ('Build') {
            steps {
                //sh 'mvn -Dmaven.test.failure.ignore=true install' 
                sh "mvn -Dmaven.test.failure.ignore clean package"
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
        
        stage ('Docker Image creation') {
            steps {
               sh "docker build -t helloworld ."
               sh "docker run --name helloworld -p 8080:8080 -d helloworld"
            }
        }
    }
}
