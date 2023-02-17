pipeline{
  agent any
  stages{
    stage("git checkout"){
      steps{
            git branch:'main', credentialsId: 'github-creds', url: 'https://github.com/greeshmagit/helloworld.git'
            }
    }
    stage("docker build"){
      steps{
               sh "docker build -t pgreeshma/pythonweb:v1 ."
           }
    }
    stage("docker push"){
      steps{
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'pwd', usernameVariable: 'user')]) {
                    sh "docker login -u ${user} -p ${pwd}"
                    sh "docker push pgreeshma/pythonweb:v1"
                   }
            }
    }
    stage("docker deploy"){
      steps{
            sshagent(['docker-ssh']) {
                         /*sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker stop hellopython"
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rm -f hellopython"
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker rmi -f pgreeshma/pythonweb:v1"
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker image prune -a -f" */     
                         sh "ssh -o StrictHostkeyChecking=no ec2-user@172.31.34.138 docker run -d -p 5000:5000 --name hellopython pgreeshma/pythonweb:v1"
            }
         }
    }
  }
}
