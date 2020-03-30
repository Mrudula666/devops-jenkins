node{
    stage('SCM Checkout'){
        steps{
        git 'https://github.com/Mrudula666/devops-jenkins'
        }
    }
    stage('Maven-Build'){
            steps {
                def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
                sh "${mvnHome}/bin/mvn package"
            }
        }
}
