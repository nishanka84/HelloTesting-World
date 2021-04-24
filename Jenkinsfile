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
              //  testing name: 'git'
            }
        }

    }
}
/*@Library('shared-nishank') _

pipeline {
    agent any
	environment {
		VERSION_NUMBER = '1.5.4'
		gitbranch = 'release-15.0.0'
		// test everything	
		
	}	
	
	
	

/*	parameters {
		choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam(defaultValue: true, description: 'Select this option to trigger a release build', name: 'Test')
		booleanParam(defaultValue: true, description: '', name: 'Git')
        }

 stages {
//      stage('Initialize') {
//	  steps {
//	      script {
			
		 //     def pipeline = pipelineConfig("test.yaml")
		  //      def file = readYaml file: test.yaml
		       //   def file = readFile "${env.WORKSPACE}/test.yaml"
		      //    test = "${file.test_file}"
		     //   retun this
		    //    gv = load "variables.groovy"	   
			   
  //             }
//	   }
  //     }
      stage('paralleltest') {
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
		//   script {
		//        parallel ubuntu: "ubuntu", windows: "windows", unix: "unix"	
		//   }
	      }
      }
    stage('checkout') {
           steps {
		script {
	             checkout branch: "master", url: "https://github.com/nishanka84/HelloTesting-World.git"

	        }      
           }
       } 
  stage('Execute Maven') {
      		   when {
			   expression {
				   params.Test == true
			   }
		   }
	  steps {
		  script {
			  gv.mavenbuild()
		  }
          }
    }

       stage('Docker Build and Tag') {
           steps {
		   
	        catchError(buildResult: 'SUCCESS', stageResult: 'UNSTABLE') {
		            sh "docker build -t helloworld:latest ." 
		            sh "docker tag helloworld nishank/helloworld:latest"
                            //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
		            echo "Version Test ${params.Version}"
	        }              

            }
       
        }
       stage('Run Docker container on Jenkins Agent') {
             
            steps {
		    script {
		         try {
			  
		            sh "docker stop modest_thompson "
                            sh "docker run -d -p 80:8080 nishank/helloworld"
		         } catch (err) {
				
		         }
		    }
            }
        }
    }
}
*/
