# Instructions

## B1

```
docker build -t my-java-app .

docker run my-java-app
```

---

## B2

Go to Jenkins and configure docker plug-ins.

Install:

1. Docker
2. Docker Compose Build Step
3. CloudBees Docker Custom Build EnvironmentVersion1.7.3

   - Make sure that these three plug-in must be installed.

4. Select as Pipeline project
   - Go to project configuration, add pipeline script under “Advanced project Options”
   - Paste the below code and make the necessary changes:

```groovy
pipeline {
    agent any
    environment {
        dockerImage=''
        registry='hshpd/pythonapp2'
        registryCredential='jenkin_docker_token'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url:
                'https://github.com/hshpdvvce/demo.git']])
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    dockerImage=docker.build registry
                }
            }
        }
    }
}
```

Scope for errors:

- repo url
- branch name eg. main/master check carefully

5. Click on Build now

---
