
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
		    TIMESTAMP=$(date '+%Y%m%d%H%M%S')
		    scp -o StrictHostKeyChecking=no -r application1 koh@10.0.2.15:~/바탕화면/node-application/application$TIMESTAMP
		    ssh koh@10.0.2.15 -t 'cd /home/koh/바탕화면/node-application; ./application.sh $TIMESTAMP'
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
	
