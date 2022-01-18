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
        stage ('Manage confiruation & deploy'){
            steps{
                //to be added, terraform building & kubernetes spinning up the cluster
            }
        }
    }
}