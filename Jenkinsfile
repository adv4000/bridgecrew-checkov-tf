 pipeline {
     agent any
        
     stages {
         stage('BuildDockerImage') {
             steps {
                 sh 'docker build -t mynginx:latest ./docker'
                 sh 'pip install --upgrade requests'
                 sh 'pip install checkov'
                 sh 'pip run checkov -d . --use-enforcement-rules -o cli -o junitxml --output-file-path console,results.xml --repo-id example/terragoat --branch master'
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
     options {
         preserveStashes()
         timestamps()
     }
 }
