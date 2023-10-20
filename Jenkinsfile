pipeline{    
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWSSecretKey')
        AWS_SECRET_ACCESS_KEY = credentials('AWSSecretKey')
    }

    stages{        

        stage('Checkout') {
            steps{  
                dir('terraform'){
                    git branch: 'main', url: 'https://github.com/athithyanac/Terraform-test.git'
                }
            }
        }    
        stage('Terraform init') {
            steps{                
                sh 'pwd; cd terraform; terraform init'
            }
        }
        stage('Test') {
            steps{
                sh 'echo "lets start"'
            }
        } 
        /*
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -no-color'
            }
        } */ 
    }
}