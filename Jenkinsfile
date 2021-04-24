@Library('shared-nishank') _

def code

pipeline {
    agent any
	
	parameters {
		//choice(name: 'Version', choices: ['1', '2', '3'], description: 'This is a test of choice')
                booleanParam(defaultValue: true, description: 'Select this option to trigger a release build', name: 'buildType')
		//booleanParam(defaultValue: true, description: '', name: 'Git')
        }

    stages {
        stage ('Example') {
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
       stage ('checkout') {
            steps {
	            // git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
		       passout type: "master", message: "https://github.com/nishanka84/HelloTesting-World.git"
           }
       }
       stage('load groovy') {
	       code = load 'mavenBuild.groovy'
       }
       stage('Execute Maven') {
      		 /*  when {
			   expression {
				   params.Build == true
			   }
		   } */
	  steps {
		  script {
			  code.call1()
		  }
          }
    }


    }
}
