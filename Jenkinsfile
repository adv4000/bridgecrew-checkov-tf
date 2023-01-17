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
                sh 'sudo apt-get update -y'
                sh 'sudo apt-get install libbz2-dev -y'
                sh 'python --version'
                sh 'sudo apt install python3.9'
                sh 'python --version'             
//                sh 'sudo cp /usr/lib/python3.8/lib-dynload/_bz2.cpython-38-x86_64-linux-gnu.so  /usr/local/lib/python3.8/'
                sh 'sudo pip3 install --upgrade pip && pip3 install --upgrade setuptools'
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
