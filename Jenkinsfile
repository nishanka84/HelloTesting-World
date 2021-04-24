@Library('shared-nishank') _

String buildType = ""

pipeline {
    agent any
	
	parameters {
		//choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam(defaultValue: false, description: 'Select this option to trigger a release build', name: 'RELEASE_BUILD')
		//booleanParam(defaultValue: true, description: '', name: 'Git')
        }

    stages {
	    stage('Initialize') {
		    steps {
			    script {
				    
		                  if (params.RELEASE_BUILD == true) {	
                                       buildType = "release"
                                  } else {
                                       buildType = "snapshot"
                                  }
			    }
		    } 
	    }
				

/*        stage ('Example') {
            steps { 
			parallel (
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
        } */
       stage ('checkout') {
            steps {
	            // git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
		       passout type: "master", message: "https://github.com/nishanka84/HelloTesting-World.git"
           }
       }

       stage('Execute Maven') {
      		 /*  when {
			   expression {
				   params.Build == true
			   }
		   } */
	  steps {
		  script {
			  
			  
			  mavenBuild buildType: "${buildType}", message: "Not triggeering maven package since buildtype is false"
		  }
          }
    }
      stage('Docker Build and Tag') {
           steps {
		   script {
			   def call() {
				   dockerBuild.execute()
			   }
		   }   
	    }
       }
    }
}
