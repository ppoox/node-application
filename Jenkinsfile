pipeline {
    agent any

    stages {
        stage('Build') {
	    steps {
		echo 'Building'
	    }
	}

	stage('Pulling') {
	    steps {
		echo 'Pulling'
		sh '''
		    scp -r -o StrictHostKeyChecking=no application1 koh@10.0.2.15:~/koh
		'''
	    }
	}

	stage('Deploy') {
	    steps {
		echo 'Deploying'
	    }
	}
	
	stage('Result') {
	    steps {
		echo 'End'
	    }
	}
    }
}
	
