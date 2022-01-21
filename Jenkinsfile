pipeline {
    agent any
    environment{
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_KEY_ID = credentials('aws_secret_key_id') 
    }
    stages{
        stage ('Manage confiruation & Deploy'){
            steps{
                sh "/terraform/terraform init"
                sh "/terraform/terraform plan"
                sh "/terraform/terraform apply --auto-approve"
            }
        }
        stage ("Kubes"){
            steps{
                sh "/Kubes/kubectl apply -f ."
            }
        }
    }
}