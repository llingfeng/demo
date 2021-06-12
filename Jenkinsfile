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
          echo "开始存档......"
          archiveArtifacts artifacts: "**/target/*.jar"
        }
      }
    }
  }
}
