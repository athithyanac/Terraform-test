pipeline{    
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AWSAccessKeyId')
        AWS_SECRET_ACCESS_KEY = credentials('AWSSecretKey')
    }

    stages{        

        stage('Checkout') {
            steps{  
                dir('terraform-test'){
                    git branch: 'main', url: 'https://github.com/athithyanac/Terraform-test.git'
                }
            }
        }    
        stage('Terraform init') {
            steps{                
                sh 'pwd; cd terraform-test; pwd; ls -l; terraform init -no-color; pwd'
            }
        }
        stage('Terraform Validate') {
            steps {
                sh 'cd terraform-test; pwd; terraform validate -no-color; pwd'
            }
        }
        stage('Terraform Import') {
            steps {
                sh 'pwd; cd terraform-test; pwd; terraform init -upgrade -no-color'
                sh 'terraform import -no-color aws_security_group.bastion sg-07838a82908ebaacb'
            }
        }
        /*stage('Test') {
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