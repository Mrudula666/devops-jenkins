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
    stage('Maven Run'){
       def mvnHome= tool name: 'maven 3.6.3', type: 'maven'
                bat "${mvnHome}/bin/mvn test -DsuiteXMLFile=testng.xml"
    }
     stage ('building docker image') {
      				bat 'docker build -t mrudulaa666/maven-image:latest .'
				 
			 
		 }
    stage('Docker push image'){
        withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'docker-password', usernameVariable: 'docker-hub')]) {
            bat "docker login -u ${env.docker-hub} -p ${env.docker-password}"
            bat "docker push mrudulaa666/maven-image:latest"
}
     stage('kubernetes deploy') {
			 steps {
			 kubernetesDeploy(configs: 'deploy.yml',kubeconfigId: 'kube',enableConfigSubstitution: true)
			 kubernetesDeploy(configs: 'service1.yml',kubeconfigId: 'kube',enableConfigSubstitution: true)
			 }
				 
		 }
   
}
