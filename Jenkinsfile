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
<<<<<<< HEAD
                sh "terraform apply --auto -approve"
=======
                sh "terraform apply --auto-approve"
>>>>>>> 7b5aa7d9d70d8aa5ceb3010ce8fc9e4d94136b4b
            }
        }
    }
}