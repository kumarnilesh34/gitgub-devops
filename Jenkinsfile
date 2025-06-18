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
                echo "This is Deploy"
                sh "docker stop nginxcicd"
                sh "docker rm nginxcicd"
                sh "docker run -itd --name nginxcicd -p 80:80 nginx:latest"
            }  
        }
    }
}
