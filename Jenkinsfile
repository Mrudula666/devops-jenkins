node{
    stage('SCM Checkout'){
        steps{
        git 'https://github.com/Mrudula666/devops-jenkins'
        }
    }
    stage('Maven-Build'){
            steps {
                sh 'mvn clean package'
            }
        }
}
