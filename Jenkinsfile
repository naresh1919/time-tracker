node {
    stage('SCM') {
        git 'https://github.com/naresh1919/time-tracker.git'
    }
    stage('build&package') {
        sh label: '', script: 'mvn package'
    }
}
