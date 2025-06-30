@Library("Shared") _
pipeline{
    agent { label "devops"}
    stages{
        stage("Hello"){
            steps{
                script{
                    hello()
                }
            }
        }
        stage("Code"){
            steps{
                script{
                whoami
                clone("https://github.com/kumarnilesh34/gitgub-devops.git", "master")
                }
            }  
        }
        stage("Build"){
            steps{
                script{
                docker_build("nginx","latest","nilesh0706")
                }
            }  
        }
        stage("Push to dockerHub"){
            steps{
                script{
                    docker_push("nginx","latest","nilesh0706")
                }
            }
        }
        stage("Test"){
            steps{
                echo "This is test"
            }  
        }
        stage("Deploy"){
            steps{
                script{
                    dockerContainerDeploy("nginxcicd", "nilesh0706", "nginx", "latest", "80:80")
                }
            }  
        }
    }
}
