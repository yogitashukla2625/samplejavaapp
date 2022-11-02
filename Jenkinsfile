pipeline {
    agent any
    stages {
        stage('compile') {
	         steps {
                // step1 
                echo 'compiling..'
		            git url: 'https://github.com/lerndevops/samplejavaapp'
		            sh script: '/opt/maven/bin/mvn compile'
           }
        }
    }
}
