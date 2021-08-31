# credit for @aabounegm

pipeline {
    agent { docker { image 'python:3.9-slim' } }
    stages {
        stage('install deps') {
            steps {
                sh '''
                    cd app_python
                    pip install -r requirements.txt
                    pip install pytest
                    pip install black
                '''
            }
        }
        stage('lint and test') {
            steps {
                sh '''
                    black app_python
                    pytest app_python
                '''
            }
        }
    }
}
