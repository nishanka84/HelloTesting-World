pipeline {
    agent any
	

	parameters {
		choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam defaultValue: false, description: 'Select this option to trigger a release build', name: 'Test'
        }

 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/nishanka84/HelloTesting-World.git'
             
          }
        }
  stage('Execute Maven') {
           steps {
		   when {
			   expression {
				   params.Test == 'true'
			   }
		   }
             
                sh 'mvn package'             
          }
        }

       stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t helloworld:latest .' 
                sh 'docker tag helloworld nishank/helloworld:latest'
                //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
		   echo "Version Test ${params.Version}"
               
          }
        }
       stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 80:8080 nishank/helloworld"
 
            }
        }
    }
}
