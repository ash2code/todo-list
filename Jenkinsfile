pipeline {
    agent any
    
    stages {
        stage("check-out") {
            steps {
                git 'https://github.com/ash2code/todo-list.git'
            }
        }
        
        stage("docker-build") {
            steps {
                sh "docker build -t ash2code/todo-list ."
            }
        }
        
        stage("docker-run") {
            steps {
                sh "docker container run -dt -p 80:80 ash2code/todo-list"
            }
        }
    }
}
