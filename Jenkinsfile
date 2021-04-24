@Library('shared-nishank') _


pipeline {
    agent 
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
	             checkout branch: "master", url: "https://github.com/nishanka84/HelloTesting-World.git"
	        }
           }
       }


    }
}
