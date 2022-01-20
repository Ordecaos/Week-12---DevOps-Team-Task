pipeline {
    agent any
    environment{
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_KEY_ID = credentials('aws_secret_key_id') 
    }
    stages{
        stage ('Manage confiruation & Deploy'){
            steps{
                sh "cd terraform"
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply --auto -approve"
            }
        }
    }
}