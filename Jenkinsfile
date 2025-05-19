pipeline {
    agent any

    stages {
        stage(build) {
            agent {
                docker {
                    image 'ubuntu:22.04'
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