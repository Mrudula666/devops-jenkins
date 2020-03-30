node{
    stage('SCM Checkout'){
        git 'https://github.com/Mrudula666/devops-jenkins'
    }
    stage('Java-Home'){
        def JAVA_HOME = tool name: 'Java', type: 'jdk'
        sh "${JAVA_HOME}/bin"
    }
    stage('Maven-Build'){

                def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
                sh "${mvnHome}/bin/mvn package"
    }
}
