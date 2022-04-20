pipeline {
  agent any
  stages {
    stage('setpa1') {
      parallel {
        stage('setpa1') {
          steps {
            sh '''whoami
ls -ltr'''
          }
        }

        stage('step2demo') {
          steps {
            writeFile(file: 'testfile.txt', text: 'ejemplo', encoding: 'utf8')
          }
        }

        stage('step3') {
          steps {
            sh '''ls -ltr
ls -ltr | grep testfi*'''
          }
        }

      }
    }

  }
}