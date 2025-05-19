pipeline {
    agent any

    stages {
        stage(build) {
            steps {
                sh '''
                    echo "Docker build command...."
                    docker build -t fasilcv/demoweb:latest .
                '''
            }
        }
    }
}