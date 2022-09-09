pipeline {
    agent any

    stages {
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
    
    stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }

    stage('Manual check') {
            steps {
                input message: 'Apply this Terraform?', ok: 'Yes'
            }
        }
    
    stage('terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }

    }

}