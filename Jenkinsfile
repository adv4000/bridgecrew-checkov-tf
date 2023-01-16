 pipeline {
     agent any
        
     stages {
         stage('DockerImage-Build') {
             steps {
                 sh 'docker build -t mynginx:latest ./docker'
             }
         }      
        
         stage('BridgeCrew-Checkov-Installation') {
            steps {
                sh 'sudo pip3 install checkov'
            }
         }
      
         stage('BridgeCrew-Checkov-Scanning') {
            steps {
                sh 'checkov --version'
            }
         }      
     }
 }
