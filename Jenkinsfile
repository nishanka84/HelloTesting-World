
String gitbranch = "release-15.0.0"
String dockername = ""

pipeline {
    agent any
	environment {
		VERSION_NUMBER = '1.5.4'
		
	}	
	

	parameters {
		choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam(defaultValue: true, description: 'Select this option to trigger a release build', name: 'Test')
        }

 stages {
      stage('Initialize') {
	  steps {
	      script {
			
		      def pipeline = pipelineCfg("test.yaml")
			   
			   dockername = "${docker_name}"
               }
	   }
       }
		   
		      
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/nishanka84/HelloTesting-World.git'
             
          }
        }
  stage('Execute Maven') {
      		   when {
			   expression {
				   params.Test == true
			   }
		   }
	  steps {
             
                sh 'mvn package'
		  echo "print ${VERSION_NUMBER}"
		  echo "print ${gitbranch}"
          }
        }

       stage('Docker Build and Tag') {
           steps {
		script {
              
		   sh "docker build -t ${dockername}:latest ." 
		   sh "docker tag ${dockername} nishank/${dockername}:latest"
                //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
		   echo "Version Test ${params.Version}"
                }
          }
        }
       stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
		sh "docker stop modest_thompson "
                sh "docker run -d -p 80:8080 nishank/helloworld"
 
            }
        }
    }
}
