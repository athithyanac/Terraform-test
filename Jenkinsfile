pipeline{    
    agent any

    stages{        
        stage('Checkout') {
            steps{                
                git branch: 'main', url: 'https://github.com/athithyanac/Terraform-test.git'
            }
        }    
        stage('Test') {
            steps{
                sh 'echo "lets start"'
            }
        }    
        /*stage('Terraform init') {
            steps{                
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -no-color'
            }
        } */ 
    }
}