docker rm -f spring-petclinic-rest
docker run --name spring-petclinic-rest -d -p 8557:9966 springcommunity/spring-petclinic-rest