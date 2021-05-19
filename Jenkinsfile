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
        stage('docker build/push') {
            steps {
              script {
                docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-creds') {
                  def image = docker.build("abidmunirmalik/mongo4-client", '.')
                  image.push('latest')
                }
              } //script
            }//steps
         }// stage

    } //stages
}
