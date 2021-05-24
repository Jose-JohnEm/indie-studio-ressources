#! /bin/sh

#tar zcvf resources.tar.gz resources

sshpass -p "xH8KAjSMq3i?A5c6M3" sftp resindie@51.77.221.38:/shared <<EOF
rm resources.tar.gz
put resources.tar.gz
exit
EOF

rm resources.tar.gz

git add -A;
git commit -m "$(date +"%D %T")"
git push