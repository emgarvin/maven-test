pipeline {
	agent any
stages 
{	
	stage("Build")
	{
	steps 
		{
		echo "Building..."
		sh 'mvn clean install'
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
}
