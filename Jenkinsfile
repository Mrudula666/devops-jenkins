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
        def sonarQubeHome = tool name: 'sonar-scanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
            bat "mvn sonar:sonar"
    }
    stage('deploy to tomcat'){
        deploy adapters: [tomcat8(credentialsId: '7de1de9d-8e53-441a-8a2d-c06b708e9dcd', path: '', url: '')], contextPath: 'webapp', onFailure: false, war: '**/*.war'
    }
   
}
