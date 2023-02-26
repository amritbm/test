pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          // Find Dockerfile in current directory
          def dockerfile = findFiles(glob: 'dockerfile').get(0)

          // Check if Dockerfile exists
          echo "in biuild function"
          if (dockerfile != null) {
            // Build Docker image
            docker.build("my-python-app:${env.BRANCH_NAME}")
          } else {
            // Error if Dockerfile is missing
            error('Dockerfile not found')
          }
        }
      }
    }

    // stage('Test') {
    //   steps {
    //     // Run tests here
    //   }
    // }

    // stage('Deploy') {
    //   steps {
    //     // Deploy to production here
    //   }
    // }
  }
}
