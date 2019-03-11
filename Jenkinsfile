pipeline {
	agent
	{
		docker {
			image: 'maven:3-alpine'
	}
	}
stages 
{	
	stage("Build")
	{
	steps 
		{
		echo "Building..."
		sh 'mvn clean install -DskipTests'
		echo "Building complete."
		}	
	}

	stage("Test")
	{
	steps 
		{	
		echo "Testing..."
		echo "Testing complete."
		}
	}

	stage("Deploy")
	{
	steps
		{	
		echo "Deploying..."
		echo "Deployed."
		}
	}
        }
    
	post {
        always {
            archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
	}
	}
}
