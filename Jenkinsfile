pipeline {
  agent any
  stages {
    stage("Build") {
      agent {
        docker {
          image 'maven:3.8.1-openjdk-17'
          args '-v /root/.m2:/data/.m2' 
        }
      }
      steps {
        sh "mvn -version"
        sh "mvn clean package"
        sh "docker --version"
      }
    }
  }
}
