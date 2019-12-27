node {
    stage('SCM') {
        git 'https://github.com/naresh1919/time-tracker.git'
    }
    stage('clean') {
        sh label: '', script: 'mvn clean'
    }
    stage('compile') {
        sh label: '', script: 'mvn compile'
    }
    stage('test') {
        sh label: '', script: 'mvn test'
    }
    stage('package') {
            sh label: '', script: 'mvn package '
    }
    stage('buildandtest') {
            withSonarQubeEnv(credentialsId: 'sonar2') {
                sh label: '', script: 'mvn package sonar:sonar'
       }
    }
    stage('Results') {
        junit '**/target/surefire-reports/TEST-*.xml'
    }
    stage('storeArtifacts') {
        archiveArtifacts 'core/target/*.jar'
        archiveArtifacts 'web/target/*.war'
    }
    stage('create docekr image') {
        sh label: '', script: 'docker build -t naresh1919/warapp .'
    }
    stage('push docekr image') {
        withDockerRegistry(credentialsId: 'docker') {
                sh label: '', script: 'docker push naresh1919/warapp'
            }
    }
    stage('docker container run') {
        def dockerRun = 'docker run -d -p 8080:8080 --name myapp naresh1919/myapp'
        sshagent(['docker_agent']) {                                               # credential of docker adgent
            sh "ssh -o StrictHostKeyChecking=no ubuntu@<SERVER ID> ${dockerRun}"    #ip address of remote server
        }
    }
}
