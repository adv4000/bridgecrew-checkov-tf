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
                sh 'uname -a'
                sh 'python --version'       
                sh 'sudo pip3 list'
                sh 'sudo pip3 install requests'
                sh 'sudo pip3 install checkov'
            }
         }

         stage('BridgeCrew-Checkov-Scanning') {
            steps {
                sh 'python --version'             
                sh 'checkov --version'
            }
         }      
     }
 }
