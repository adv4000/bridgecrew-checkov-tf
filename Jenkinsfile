 pipeline {
     agent any
     node(newimagetest){}
        
     stages {
         stage('DockerImage-Build') {
            steps {
                sh 'docker build -t mynginx:latest ./docker'
                sh 'checkov --version'
            }
         }             
     
//          stage('BridgeCrew-CheckovInDocker') {
//              steps {
//                  script {
//                      docker.image('bridgecrew/checkov:latest').inside("--entrypoint=''") {
//                          try {
//                               sh 'checkov -d ./docker --framework dockerfile -o cli -o junitxml --output-file-path console,results.xml'
//                               sh 'checkov --docker-image mynginx:latest --dockerfile-path ./docker/Dockerfile --bc-api-key ca5cb7d5-24e6-4a17-b3c4-31187a8baa5d --repo-id adv4000/bridgecrew-checkov-tf'
//                               junit skipPublishingChecks: true, testResults: 'results.xml'
//                          } catch (err) {
//                               junit skipPublishingChecks: true, testResults: 'results.xml'
//                              throw err
//                          }
//                      }
//                  }
//              }
//          }      
      
//          stage('BridgeCrew-Checkov-Installation') {
//             steps {
//                 sh 'uname -a'
//                 sh 'sudo apt-get update -y'
//                 sh 'sudo apt-get install libbz2-dev -y'
//                 sh 'python --version'
//                 sh 'sudo pip3 install --upgrade pip && pip3 install --upgrade setuptools'
//                 sh 'sudo pip3 install --upgrade requests'  
//                 sh 'sudo pip3 list'
//                 sh 'sudo pip3 install checkov'
//             }
//          }

         stage('BridgeCrew-Checkov-Scanning') {
            steps {
                sh 'checkov --docker-image mynginx:latest --dockerfile-path ./docker/Dockerfile --bc-api-key ca5cb7d5-24e6-4a17-b3c4-31187a8baa5d --repo-id adv4000/bridgecrew-checkov-tf'
            }
         }      
     }
 }
