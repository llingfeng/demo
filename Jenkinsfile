pipeline {
    agent any
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
            steps {
                sh "docker build -t app-demo:latest ."
            }
        }
        stage("Run Application") {
            steps {
                sh \
                '''
                    # !/bin/bash
                    container=$( docker ps -a | grep -i "app-demo" )
                    if [ ! -z "$container" ]; then
                        docker rm -f app-demo
                    fi
                    docker run --name app-demo -d -p 9527:9527 app-demo:latest
                '''
            }
        }
    }
}
