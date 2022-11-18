pipeline {
    
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS=credentials('medal-cred')
  }
    
    stages {
    
        stage('gitclone') {
        
            steps {
                git 'https://github.com/MedalMan/CloudFlyers.git'
            }
        }
        
        stage ('Build') {
            
            steps {
                sh 'docker build -t medalman/mydemorepo:latest . '
            }
        }
        
        stage('Login') {
            
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_USR --password-stin'
            }
        }
    
        stage('Push') {
        
            steps {
                sh 'docker push medalman/mydemorepo:latest'
            }
        }
    }
    
    post {
        always {
            sh 'docker logout'
        }
    }

}
