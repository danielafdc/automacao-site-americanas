pipeline {
    agent {
        docker {
            image 'ruby'
<<<<<<< HEAD
            args '--link selenium'
=======
>>>>>>> 257140d83f3c0acf1e25913d5fed30c1a047c66f
        }
    }
    environment {
        CI = true
    }
    stages {
        stage('Bundle') {
            steps {
                sh "bundle install"
            }
        }
<<<<<<< HEAD
        stage('Run Features') {
            steps {
                sh "bundle exec cucumber -p ci"
            }
        }
=======
>>>>>>> 257140d83f3c0acf1e25913d5fed30c1a047c66f
    }
}