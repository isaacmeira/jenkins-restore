docker stop jenkins
docker start jenkins 

docker cp ./restore.sh jenkins:/var/
docker exec -ti --user root jenkins /bin/bash /var/restore.sh backup_20210416

docker stop jenkins
docker start jenkins 