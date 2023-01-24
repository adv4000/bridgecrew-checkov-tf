 pipeline {
     agent any

     environment {
        DOCKER_IMAGENAME = "mynginx:latest"
        DOCKER_FILE_PATH = "./docker"
        GIT_REPO_ID      = "adv4000/bridgecrew-checkov-tf"
        BRIDGECREW_API_KEY = "ca5cb7d5-24e6-4a17-b3c4-31187a8baa5d"
//      BRIDGECREW_API_KEY = credentials('bridgecrew-api-key')
     }
  
     stages {
         stage('DockerImage-Build') {
            steps {
             sh "docker build -t ${env.DOCKER_IMAGENAME} ${env.DOCKER_FILE_PATH}"
            }
         }             
     
         stage('BridgeCrew-Checkov-Scanning') {
            steps {
                sh "checkov --version"             
                sh "checkov --directory ${env.DOCKER_FILE_PATH} --framework dockerfile"
                sh "checkov --docker-image ${env.DOCKER_IMAGENAME} --dockerfile-path ${env.DOCKER_FILE_PATH}/Dockerfile --bc-api-key ${env.BRIDGECREW_API_KEY} --repo-id ${env.GIT_REPO_ID} -o cli -o junitxml --output-file-path console,results.xml"
                junit skipPublishingChecks: true, testResults: 'results.xml'
            }
         }      
     }
 }
