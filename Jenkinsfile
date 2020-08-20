
pipeline {
    agent any

    stages {
        stage('Build') {
	    steps {
		echo 'Building'
		def COPY_DIRECTORY_NAME = new Date()
		echo COPY_DIRECTORY_NAME
	    }
	}

	stage('Backup') {
	    steps {
		echo 'Backup'
		sh '''
		    ssh koh@10.0.2.15 mv /home/koh/바탕화면/node-application/application1 /home/koh/바탕화면/node-application/application1-1
		'''
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
		sh '''
		    ssh koh@10.0.2.15 ./application.sh
		'''
	    }
	}
	
	stage('Result') {
	    steps {
		echo 'End'
	    }
	}
    }
}
	
