node{
    stage('SCM Checkout'){
        git 'https://github.com/Mrudula666/devops-jenkins'
    }
    stage('Java-Home'){
        def JAVA_HOME = tool name: 'Java', type: 'jdk'
        bat "${JAVA_HOME}/bin"
    }
    stage('Maven-Build'){

                def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
                bat "${mvnHome}/bin/mvn package"
    }
}
