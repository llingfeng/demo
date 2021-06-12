pipeline{
  agent any
  stages{
    stage('Init'){
      steps{
        echo 'Testing......'
      }
    }
    state('Build'){
      steps{
        echo "Building....."
      }
    }
    stage(){
      steps{
        echo "Code Deployed."
      }
    }
  }
}
