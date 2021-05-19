pipeline {
    agent any
    environment {
        DOCKERHUB_CREDS   = "dockerhub-creds"
        ARTIFACTORY_CREDS = "artifactory-creds"
    }
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '1')
    }
    stages {
        stage('version check') {
            steps {
                sh "git --version"
                sh "docker --version"

            }//steps

        }// stage

    } //stages
}
