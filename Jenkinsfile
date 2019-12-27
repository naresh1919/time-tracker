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
}
