@Library('shared-nishank') _


pipeline {
    agent none
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

    }
}
