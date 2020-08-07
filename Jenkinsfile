pipeline {
   agent any

    tools {
       
        dockerTool "docker"
        
    }

    stages {
        stage('VCS') {
            steps {
                git 'https://github.com/creepyghost/hello-world-webapp.git'
            }
        }
    stage('Deploy') {
            steps {
                script {
                    withDockerRegistry(
                        credentialsId: '4182aebb-11ec-4640-9754-4cfa89891c64',
                        toolName: 'docker') {
                        
                    
                        def echoServerImage = docker.build("arnabnath96/python-jenkins:latest");
                        echoServerImage.push();
                    }
                }
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
