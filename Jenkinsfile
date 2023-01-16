 pipeline {
     agent any
        
     stages {
         stage('DockerImage-Build') {
             steps {
                 sh 'docker build -t mynginx:latest ./docker'
             }
         }      
  
      
         stage('BridgeCrew-Checkov') {
             steps {
                 script {
                     docker.image('bridgecrew/checkov:latest').inside("--entrypoint=''") {
                         try {
                             sh 'checkov -d ./docker -framework dockerfile -o cli -o junitxml --output-file-path console,results.xml'
                             junit skipPublishingChecks: true, testResults: 'results.xml'
                         } catch (err) {
                             junit skipPublishingChecks: true, testResults: 'results.xml'
                             throw err
                         }
                     }
                 }
             }
         }
     }
 }
