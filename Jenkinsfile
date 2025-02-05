pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "my-portfolio-app_dev"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'portfolio1', 
                    url: 'https://github.com/Dineshchandika/Dinesh-Portfolio.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image from the Dockerfile
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container and map port 8080 of the host to port 80 in the container
                    sh "docker run -d -p 9080:80 ${DOCKER_IMAGE}"
                }
            }
        }
    }
    post {
        always {
            // Clean up by stopping and removing the container after the job
            echo "Skipping cleanup to keep container running"
        }
    }
}
