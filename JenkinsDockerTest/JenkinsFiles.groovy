// Jenkinsfile
pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('jenkins-docker-test')
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    docker.image('jenkins-docker-test').inside {
                        sh './test_script.sh'
                    }
                }
            }
        }
    }
}