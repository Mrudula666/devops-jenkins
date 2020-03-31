node{
    stage('SCM Checkout'){
        git 'https://github.com/Mrudula666/devops-jenkins'
    }
    stage('JDK'){
    env.JAVA_HOME="${tool name: 'Java', type: 'jdk'}"
    env.PATH="${env.JAVA_HOME}/bin:${env.PATH}"
    bat 'java -version'
    }
    stage('Maven-Build'){

                def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
                bat "${mvnHome}/bin/mvn package"
    }
    stage('SonarQube-Analysis'){
        def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
        withSonarQubeEnv('SonarQube'){
            bat "${mvnHome}/bin/mvn sonar:sonar"
        }
    }
   
}
