pipeline {

agent none
stages 
{	
	stage("Build")
	{
	agent {
		docker {
			image 'maven:3-alpine'
			}
		}

	steps 
		{
		echo "Compiling..."
		sh 'mvn clean compile'
		echo "Compilation complete."
		}	
	}

	stage("Package")
	{
	agent {
		docker {
			image 'maven:3-alpine'
			args '-v jenkins_home:/var/jenkins_home'
			}
		}
	steps 
		{	
		echo "Packaging..."
		sh 'mvn package'
		sh 'ls -l'
		echo "Packaging complete."
		}
	}

	stage("Docker")
	{
	agent {
		docker {
			image 'docker:latest'	
			}
		}
	
	steps
		{	
			withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) 
			{
			echo "Dockering..."
			sh 'docker build -t in-jenkins-image .'
			sh 'docker push emgar/firstimage:latest'
			echo "Docker made."
			}
		}
	}
}
        
    
}
