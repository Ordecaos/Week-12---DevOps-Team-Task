pipeline {
    agent any
    environment{
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_KEY_ID = credentials('aws_secret_key_id')
        DOCKER_UNAME = credentials('docker_uname')
        DOCKER_PWORD = credentials('docker_pword')
            
    }
    stages{
        
        stage ('Pull'){
            steps {
                sh "docker-compose build --parallel"
                sh "docker login -u $DOCKER_UNAME -p $DOCKER_PWORD"
                sh "docker-compose push" 
            }
        }
        stage ('Manage confiruation & Deploy'){
            steps{
                sh "cd terraform"
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply"
                sh "yes"
            }
        }
    }
}