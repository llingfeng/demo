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
        sh "mvn -version"
        sh "mvn -s /var/jenkins_home/setting.xml clean package"
        sh "docker --version"
      }
    }
  }
}
