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
                sh "mvn clean install -Dmaven.test.skip=true"
            }
        }
        stage('test') {
            steps {
                sh "mvn surefire-report:report"
            }
        }
        stage('sonarqube analysis') {
            environment {
                sonarHome = tool 'sonar-scanner-server'
            }
            steps {
                withSonarQubeEnv('sonarqube-server') {
                    sh "{sonarHome}/bin/sonar-scanner"
                }
            }
        }
    }
}
