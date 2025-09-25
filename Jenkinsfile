pipeline {
    agent any
    environment {
        PATH = "/opt/maven/bin:$PATH"
    }

    stages {
        stage('git clone') {
            steps {
                git url: "https://github.com/KanhaiyaITGIT/Sonqu-project-amazon.git", branch: "main"
            }
        }
   
        stage('build') {
            steps {
                sh "mvn clean install"
        }    }
  

        stage('Sonarqube analysis') {
            environment {
                scannerHome = tool 'sonarqube-scanner'

            }

            steps {
                withSonarQubeEnv('sonar-server'){
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
    }
}

