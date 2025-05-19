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
                echo "this test from github"
            }
        }

    }
}