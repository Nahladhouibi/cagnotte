pipeline {
    agent any

    environment {
        JAVA_HOME = tool 'JDK-17'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    bat "./mvnw clean install"
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    bat "./mvnw test"
                }
            }
        }

        stage('Deploy') {
            steps {
                // Add deployment steps here (e.g., deploy to a server)
            }
        }
    }

    post {
        success {
            echo 'Build and deployment successful!'
        }
        failure {
            echo 'Build or deployment failed!'
        }
    }
}

  
