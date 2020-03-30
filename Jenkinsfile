pipeline{
    stage('SCM Checkout'){
        git 'https://github.com/Mrudula666/devops-jenkins'
    }
    stage('JDK'){
        def JAVA_HOME = tool name: 'Java', type: 'jdk'
        bat "${JAVA_HOME}"
    }
    stage('Maven-Build'){

                def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
                bat "${mvnHome}/bin/mvn package"
    }
}
