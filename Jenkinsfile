pipeline {
    agent any

    stages {
        stage(build) {
            agent {
                docker {
                    image 'alpine:latest'
                }
            }
            steps {
                sh '''
                    echo "image version check"
                    cat /etc/os-*
                '''
            }
        }
    }
}