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
    stage('Build Docker image'){
        sh 'docker build -t mrudulaa666/tomcat-deploy:1.0.0'
    }
    stage('Deploy Image'){
          withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'pwd', usernameVariable: 'docker')]) {
              sh "docker login -u ${env.docker} -p ${env.pwd}"
              sh 'docker push mrudulaa666/tomcat-deploy1.0.0'
                }
    }
   
}
