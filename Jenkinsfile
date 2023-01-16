 pipeline {
     agent any
        
     stages {
         stage('DockerImage-Build') {
             steps {
                 sh 'docker build -t mynginx:latest ./docker'
                 sh 'sudo pip install --upgrade requests'
             }
         }      
  
      
         stage('BridgeCrew-Checkov') {
             steps {
                 script {
                     docker.image('bridgecrew/checkov:latest').inside("--entrypoint=''") {
                         try {
//                              sh 'pip install --upgrade requests && checkov -d ./docker --framework dockerfile -o cli -o junitxml --output-file-path console,results.xml'
//                              junit skipPublishingChecks: true, testResults: 'results.xml'
                             sh 'pip install --upgrade requests && checkov --docker-image mynginx:latest --dockerfile-path ./docker/Dockerfile --bc-api-key ca5cb7d5-24e6-4a17-b3c4-31187a8baa5d --repo-id adv4000/bridgecrew-checkov-tf' 
                         } catch (err) {
//                              junit skipPublishingChecks: true, testResults: 'results.xml'
                             throw err
                         }
                     }
                 }
             }
         }
     }
 }
