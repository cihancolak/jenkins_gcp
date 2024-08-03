pipeline {
    agent any
	
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-key')
    }
	
    stages {
        stage('Git Checkout') {
            steps {
                withCredentials([string(credentialsId: 'git_token', variable: 'GIT_TOKEN')]) {
                    git url: "https://github.com/cihancolak/jenkins_gcp.git",
                        branch: 'main',
                        credentialsId: 'git_token'
                }
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Manual Approval') {
            steps {
                input "Approve?"
            }
        }
	    
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
