@Library('shared-nishank') _

String buildType = ""
String goat = ""
String testfile = ""



pipeline {
	agent none

	
	parameters {
		//choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam(defaultValue: false, description: 'Select this option to trigger a release build', name: 'RELEASE_BUILD')
		booleanParam(defaultValue: false, description: '', name: 'Git')
        }

    stages {
	    stage('Initialize') {
	    
		    steps {
			    milestone(ordinal: 1)
			    script {
				   //def pipeline = pipelineCfg()
				  // testfile = "${pipeline.muffler}"
				  //  println pipeline."name"
				   if (params.Git == true) {
					goat = "true"
					
				   } else {
					goat = "false"
				   }
				    
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
       
       stage ('Test params') {
      
	     steps {
		     lock(resource: 'test environment', inversePrecedence: true) {
		     
		     testingSomething goat: "${goat}", cat: "Dog"
		     sleep 300
	             echo "1st step"
		     echo "2nd step"
		     echo "3rd step"
		     milestone(ordinal: 2)
	             }
              }
       }
       
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
	                dockerBuild.execute()   
		   }   
	    }
       }
         stage('Run Docker container on Jenkins Agent') {
             
            steps {
		    script {
			    dockerRun.kube()
		    }
	    }
	 }
    }
}
