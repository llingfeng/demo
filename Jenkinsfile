pipeline {
  agent any
  stages {
    stage("Build") {
      agent {
        docker {
          image 'docker pull maven:3.8.1-openjdk-17'
        }
      }
      steps {
        sh "mvn -v"
        sh "docker --version"
      }
    }
  }
}
