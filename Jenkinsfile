 pipeline {
     agent any
        
     stages {
         stage('BuildDockerImage') {
             steps {
                 sh 'docker build -t mynginx:latest ./docker'
                 sh 'sudo pip3 install checkov'
                 sh 'pip3 show checkov'
                 sh 'checkov -d ./docker --use-enforcement-rules -o cli -o junitxml --output-file-path console,results.xml'
             }
         }      
   
//          stage('BridgeCrew-Checkout') {
//              steps {
//                  git branch: 'master', url: 'https://github.com/bridgecrewio/terragoat'
//                  stash includes: '**/*', name: 'terragoat'
//              }
//          }
//          stage('BridgeCrew-Checkov') {
//              steps {
//                  script {
//                      docker.image('bridgecrew/checkov:latest').inside("--entrypoint=''") {
//                          unstash 'terragoat'
//                          try {
//                              sh 'checkov -d ./docker -o cli -o junitxml --output-file-path console,results.xml'
//                              junit skipPublishingChecks: true, testResults: 'results.xml'
//                          } catch (err) {
//                              junit skipPublishingChecks: true, testResults: 'results.xml'
//                              throw err
//                          }
//                      }
//                  }
//              }
//          }
  
     }
//      options {
//          preserveStashes()
//          timestamps()
//      }
 }
