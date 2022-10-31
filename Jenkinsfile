pipeline {
    agent any

    stages {
        stage('GIT PULL') {
            steps {
                git branch: "master", 
                credentialsId: 'tranconguet',
                url: 'https://github.com/tranconguet/income_calculator'
            }
        }
        stage('TEST') {
            steps {
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']){
                    sh 'flutter test'
                }
            }
        }
        stage('BUILD') {
            steps {
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']){
                    sh '''
                    #!/bin/sh
                    flutter build apk --debug
                    '''
                }
            }
        }
        stage('DISTRIBUTE') {
            steps {
                appCenter apiToken: 'd2f53d3c9ff2fbd4871b4859c7974111964c2a47',
                        ownerName: 'tranconguet',
                        appName: 'Income-calculator',
                        pathToApp: 'build/app/outputs/apk/debug/app-debug.apk',
                        distributionGroups: 'Income calculator testers'
            }
        }
    }
}