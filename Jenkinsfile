pipeline {
    agent any
    stages {
        stage ('Compile Stage') {

            steps {
                maven_invoker(maven : 'maven') {
                    bat 'mvn clean compile'
                }
            }
        }
        stage ('Install Stage') {
            steps {
                maven_invoker(maven : 'maven') {
                    bat 'mvn install'
                }
            }
        }
    }
}
