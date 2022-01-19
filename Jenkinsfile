pipeline {
    agent any
    stages{
        stage ('NG Tests'){
            steps{
                sh "ng test"
                sh "ng serve"
                sh "ng e2e"
            }
        }
        stage ('Build and Push Images'){
            environment{
                DOCKER_UNAME = credentials('docker_uname')
                DOCKER_PWORD = credentials('docker_pword')
            }
            steps{
                sh "docker-compise build --parallel"
                sh "docker login -i $DOCKER_UNAME -p $DOCKER_PWORD"
                sh "docker-compose push"
            }
        }
        stage ('Manage confiruation'){
            steps{
                sh "cd terraform"
                sh "terraform init"
                sh "terraform plan"
                sh "terraform apply"
                sh "cd .."
            }
        stage ('Deploy')
            steps{
                sh "scp deploy.sh <VM name/port>:/home/deploy.sh"
                sh "scp docker-compose.yaml <VM name/port>:/home/jenkins/docker-compose.yaml"
                sh "cd Kubes"
                sh "scp angular.yaml <VM name/port>:/home/jenkins/angular.yaml"
                sh "scp configmap.yaml <VM name/port>:/home/jenkins/configmap.yaml.yaml"
                sh "scp nginx.yaml <VM name/port>:/home/jenkins/nginx.yaml"
                sh "scp rest.yaml <VM name/port>:/home/jenkins/rest.yaml"
            }
        }
    }
}