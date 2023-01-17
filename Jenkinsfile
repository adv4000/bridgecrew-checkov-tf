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
                sh 'apt-get update -y'
                sh 'python --version'   
                sh 'curl ip.adv-it.net'
                sh 'sudo pip3 install --upgrade requests'  
                sh 'sudo pip3 list'
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
