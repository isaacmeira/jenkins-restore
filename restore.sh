readonly BACKUP_FILE="$1"
readonly JENKINS_PATH="/var/jenkins_home/"

# Usage: ./jenkins-backup.sh backup_YYYmmDD  Ex: backupt_20210416

echo "Entering Jenkins Folder"
cd /var/jenkins_home/backups_pipe/
echo "Unziping backup"
tar xzvf ${BACKUP_FILE}.tar.gz 
echo "Moving Backup to ${JENKINS_PATH}"
cp -R jenkins-backup/* ${JENKINS_PATH}
echo "Changing owner"
chown jenkins:jenkins -R ${JENKINS_PATH}
echo "Removing older backup folder"
rm -rf /var/jenkins_home/backups_pipe/jenkins-backup

