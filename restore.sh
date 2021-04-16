readonly BACKUP_FILE="$1"
readonly JENKINS_PATH="/var/jenkins_home/"

# Usage: ./jenkins-backup.sh backup_YYYmmDD  Ex: backupt_20210416

cd /var/jenkins_home/backups_pipe/
tar xzvf ${BACKUP_FILE}.tar.gz 
cp -R jenkins-backup/* ${JENKINS_PATH}
chown jenkins:jenkins -R ${JENKINS_PATH}


