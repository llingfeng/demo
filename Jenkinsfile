pipeline {
    agent none
    stages {
        stage("Build") {
            agent {
                docker {
                    image 'maven:3.8.1-openjdk-17'
                }
            }
            steps {
                sh "mvn -s /var/jenkins_home/setting.xml clean package"
            }
        }
        stage("Create Docker Image"){
            agent any
            steps {
                sh "docker build -t app-demo:latest ."
            }
        }
        stage("Run Application") {
            agent any
            steps {
                sh 'docker container ls -a -f name=app-demo -q|xargs -r docker rm -f'
                sh 'docker run --name app-demo -d -p 5000:5000 app-demo:latest'
            }
        }
    }
}
