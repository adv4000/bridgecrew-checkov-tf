 pipeline {
     agent any
        
     stages {
         stage('BuildDockerImage') {
             steps {
                 sh 'docker build -t mynginx:latest ./docker'
             }
         }      
         stage('BridgeCrew-Checkout') {
             steps {
                 git branch: 'master', url: 'https://github.com/bridgecrewio/terragoat'
                 stash includes: '**/*', name: 'terragoat'
             }
         }
         stage('BridgeCrew-Checkov') {
             steps {
                 sh "pip install checkov"
                 sh "checkov -d . --use-enforcement-rules -o cli -o junitxml --output-file-path console,results.xml --repo-id example/terragoat --branch master"                  
             }
         }
     }
     options {
         preserveStashes()
         timestamps()
     }
 }
