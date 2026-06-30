#!/bin/bash
TOKEN="8948303678:AAGLDOnnlFqx8TEg6L5kwb0JGaBs4VLOEyM"
CHAT_ID="1055313277"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
send_telegram() {
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$1" > /dev/null
}
check_internet() {
ping -c 1 8.8.8.8> /dev/null
}
DATE=$(date +%Y-%m-%d)
mkdir -p backup_$DATE
for i in  {1..5};do
touch backup_$DATE/data_$i.txt
done 
echo "First backup at $(date)" >> backup_$DATE/data_1.txt
chmod 644 backup_$DATE/data_1.txt
FILE_COUNT=$(ls -1 "backup_$DATE"/*.txt | wc -l)
echo "Backup completed. Files created: $FILE_COUNT"
if check_internet;then
send_telegram "бэкап готов в $DATE, создано файлов $FILE_COUNT"
else
echo "нет интернет соединения" >> error.log
fi
