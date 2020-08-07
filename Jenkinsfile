pipeline {
    agent { docker { image 'python:3.5.1' } }

     stages {
        stage('VCS') {
            steps {
                git 'https://github.com/creepyghost/hello-world-webapp.git'
            }
        }
        stage('Build') {
            steps {
                sh "pip install -r requirements.txt"
            }
        }
        
    }
    post {   
        success {
            echo "Success"
        }
        failure {
            echo "Failure"
        }
    }
}
