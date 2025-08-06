pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'echo Building Docker Image...'
                bat 'docker build -t my-app .'
            }
        }
        stage('Test') {
            steps {
                bat 'echo Running tests...'
                bat 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                bat 'echo Deploying application...'
                bat 'docker run -d -p 3000:3000 --name my-app-container my-app'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
