pipeline {
    agent any
    //environment{
    //    AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
    //    AWS_SECRET_KEY_ID = credentials('aws_secret_key_id')
    //    DOCKER_UNAME = credentials('docker_uname')
    //    DOCKER_PWORD = credentials('docker_pword')
            
    //}
    stages{
        stage('deploy scipt'){
            steps{
                sh "bash deploy.sh"
            }
        }

        stage ('NG Tests'){
            steps{
                sh "cd Week-12---DevOps-Team-Task"
                sh "cd spring-petclinic-angular"
                sh "ng test --watch=false"
                sh "sudo npm run ng serve"
                sh "sudo npm run ng e2e"
                sh "cd .."
            }
        }
        stage ('Pull'){
            steps{
                sh "docker pull myounis789/angular:latest"
                sh "docker pull myounis789/mysql:latest"
                sh "docker pull myounis789/nginxpetclinic:latest"
                sh "docker pull myounis789/rest2:latest"
            }
        }
        //stage ('Manage confiruation'){
            //steps{
            //    sh "cd terraform"
            //    sh "terraform init"
            //    sh "terraform plan"
            //    sh "terraform apply"
            //    sh "yes"
            //}
        //}
        stage ('Deploy'){
            steps{
                sh "docker-compose up -d"
            }
        }
    }
}