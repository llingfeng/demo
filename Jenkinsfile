pipeline{
  agent any
  tools{
    maven "maven"
  }
  stages{
    stage("Build"){
      steps{
        echo "Initing......"
        sh "mvn clean package"
      }
      post{
        success {
          echo "build success......"
          archiveArtifacts artifacts: "**/target/*.jar"
        }
      }
    }
  }
}
