@Library('shared-nishank') _

String buildType = ""
String goat = ""
String testfile = ""
//Hello Test"


pipeline {
	agent any

	
	parameters {
		//choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam(defaultValue: false, description: 'Select this option to trigger a release build', name: 'RELEASE_BUILD')
		booleanParam(defaultValue: false, description: '', name: 'Git')
        }

    stages {
       stage ('Test') {
      
	     steps {
		     script {
		     
		     write branch: "master", gitUrl: "https://github.com/nishanka84/HelloTesting-World.git", texting: "Nishank is learning groovy"
                     //       write.test name: "Nishank"
		     }
              }
		     
	             
        }
       
/*	    stage('Initialize') {
	    
		    steps {
			    milestone(ordinal: 1)
			    lock(resource: 'Init', inversePrecedence: true) {
			    script {
				    sleep 200
				    echo "Hi"
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
			    milestone(ordinal: 2)
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
        } 
       
       stage ('Test params') {
      
	     steps {
		     
		     lock(resource: 'Init', inversePrecedence: true) { 
		     testingSomething goat: "${goat}", cat: "Dog"
		     sleep 90
	             echo "h"
		     milestone(ordinal: 3)
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
		   } 
	  steps {
		  script {
			  
			  
			  mavenBuild buildType: "${buildType}", message: "Not triggeering maven package since buildtype is false"
			  

		  }
          }
    }
      stage('Docker Build and Tag') {
           steps {
		   lock(resource: 'dock', inversePrecedence: true) {
		   script {
			
	                dockerBuild.execute()
	           milestone(ordinal: 4)
		   }   
		   }
	    }
       }
         stage('Run Docker container on Jenkins Agent') {
             
            steps {
		    script {
			    dockerRun.kube()
		    }
	    }
	 } */
    } 
}
