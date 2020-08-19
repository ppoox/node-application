pipeline {
    agent any

    stages {
        stage('Build') {
	    steps {
		echo 'Building'
	    }
	}

	stage('Copy') {
	    steps {
		echo 'Copying'
		sh '''
		    scp -o StrictHostKeyChecking=no -r application1 koh@10.0.2.15:~/바탕화면/node-application
		'''
	    }
	}

	stage('NPM Install') {
	    steps {
		echo 'Installing'
#		sh '''
#		    ssh koh@10.0.2.15 ./application.sh
#		'''
	    }
	}
	
	stage('Result') {
	    steps {
		echo 'End'
	    }
	}
    }
}
	
