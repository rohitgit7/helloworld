pipeline {
    agent any
    stages {
        stage ('Initialize') {
            steps {
                def mvnHome = tool 'M3'
            }
        }
        
        stage ('Checkout') {
            steps {
               git url: 'https://github.com/kuberguy/helloworld.git' 
            }
        }

        stage ('Build') {
            steps {
                //sh 'mvn -Dmaven.test.failure.ignore=true install' 
                sh "${mvnHome}/bin/mvn -Dmaven.test.failure.ignore clean package"
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
    }
}
