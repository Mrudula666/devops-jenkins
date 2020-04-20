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
                bat "${mvnHome}/bin/mvn clean install"
    }
    stage('SonarQube-Analysis'){
        def sonarQubeHome = tool name: 'sonar-scanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
            bat "mvn sonar:sonar"
    }
    stage('deploy to tomcat'){
        deploy adapters: [tomcat8(credentialsId: 'd8c95aac-8556-4d88-affe-6fffd75b20a3', path: '', url: 'http://localhost:9090/webapp')], contextPath: 'webapp', war: '**/*.war'
    }
   
}
