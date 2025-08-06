pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Docker Image...'
                bat 'docker build -t my-app .'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'echo "No tests defined."' // or actual test command
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                bat 'docker run -d -p 3000:3000 --name my-app-container my-app'
            }
        }
    }
    post {
        failure {
            echo 'Pipeline failed.'
        }
    }
}
