pipeline{    
    agent any

    stages{        
        stage('Checkout') {
            steps{                
                git branch: 'main', url: 'https://github.com/athithyanac/Terraform-test.git'
            }
        }        
        stage('Terraform init') {
            steps{                
                sh 'terraform init'
            }
        }  
    }
}