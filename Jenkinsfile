@Library('shared-nishank') _


pipeline {
    agent any
    stages {
        stage ('Example') {
            steps { 
		      parallel(
			      ubuntu: {
				      echo "Test ubuntu"
				      sleep 10
			      },
			      windows: {
				      echo "Test windows"
				      sleep 10
			      },
			      unix: {
				      echo "Test unix"
				      sleep 10
			      }
		        )	      
            }
        }
       stage ('checkout') {
            steps {
		script {
	            // git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
		       passout branch = "master", url = "https://github.com/devops4solutions/CI-CD-using-Docker.git"
	        }
           }
       }


    }
}
