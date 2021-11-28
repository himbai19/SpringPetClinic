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
        stage('Deploy'){
            steps{
                bat 'nohup java -jar -DServer.port=8001 target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar &'
            }
        }
    }
}
