node{
    stage('SCM Checkout'){
        git 'https://github.com/Mrudula666/devops-jenkins'
    }
    stage('JDK'){
    env.JAVA_HOME="${tool name: 'JAVA_HOME', type: 'jdk'}"
    env.PATH="${env.JAVA_HOME}/bin:${env.PATH}"
    sh 'java -version'
    }
    stage('Maven-Build'){

                def mvnHome= tool name: 'MAVEN_HOME', type: 'maven'
                sh "${mvnHome}/bin/mvn clean install"
    }
    stage('Maven Run'){
       def mvnHome= tool name: 'MAVEN_HOME', type: 'maven'
                sh "${mvnHome}/bin/mvn test -DsuiteXMLFile=testng.xml"
    }
     stage ('building docker image') {
      				sh 'docker build -t mrudulaa666/maven-image:latest .'
				 
			 
		 }
    stage('Docker push image'){
        withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'docker-password', usernameVariable: 'docker-hub')]) {
            sh "docker login -u ${env.docker-hub} -p ${env.docker-password}"
            sh "docker push mrudulaa666/maven-image:latest"
	}
    }
   
}
