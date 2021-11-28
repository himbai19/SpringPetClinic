pipeline{
    agent{label 'master'}
    tools{maven 'MVN3'}
    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/himbai19/SpringPetClinic.git'
            }
        }
        stage('Build'){
            steps{
                bat 'mvn compile'
            }
        }
        stage('Test'){
            steps{
                bat 'mvn test'
            }
        }
        stage('Package'){
            steps{
                bat 'mvn package'
            }
        }
    }
}
