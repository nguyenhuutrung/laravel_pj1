#!/bin/bash

ssh -o "StrictHostKeyChecking no" ec2-user@54.238.158.106 << EOF

echo '1. Updating sources'
#cd /patch/to/your/repository/
#git checkout --force master
#git pull

#echo "2. Restart apache"
#sudo apache2ctl graceful

cd /var/www/html/
mkdir checkCI
echo '2.Done!'

EOF