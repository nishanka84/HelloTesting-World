@Library('shared-nishank') _


pipeline {
    agent any
    stages {
        stage ('Example') {
            steps { 
		parallel win: "windows", uni: "unix", ubun: "ubuntu"

            }
        }
       stage ('checkout') {
            steps {
	            // git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
		       passout type: "master", message: "https://github.com/nishanka84/HelloTesting-World.git"
           }
       }


    }
}
