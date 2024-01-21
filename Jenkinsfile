pipeline {
    agent any
    environment {
        SVC_ACCOUNT_KEY = credentials('base64-account')
    }
    stages{
        stage('Set-credentials'){
            steps{
                sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./jenkins.json'
                sh 'pwd'
            }
        }
        stage('Auth-Project'){
            steps
            {
                sh 'gcloud auth activate-service-account jenkinsaccount@subtle-presence-409300.iam.gserviceaccount.com --key-file=jenkins.json'
            }
        }
        stage('Create Instances'){
            steps{
                sh 'gcloud compute instances $ACTION $INSTANCE --zone=$ZONE --quiet'
            }
        }
        stage('List Instances'){
            steps{
                sh 'gcloud compute instances list'
            }
        }
    }
}