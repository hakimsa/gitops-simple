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

        stage('git') {
          steps {
            git(url: 'https://github.com/hakimsa/portainer-gitops-simple', branch: 'hakim', credentialsId: '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', poll: true)
          }
        }

        stage('status') {
          steps {
            sh '''git status
git config --global user.name "hakimsa"
git add .
git commit -m "add testfile.txt"


git pull
git push'''
          }
        }

      }
    }

  }
}