#!/bin/bash

ssh -o "StrictHostKeyChecking no" ec2-user@54.238.158.106 << EOF

echo '1. Updating sources'
cd /var/www/html/laravel_pj1
#git checkout --force dev
git pull

composer install -n --prefer-dist --ignore-platform-reqs

#echo "2. Restart apache"
#sudo apache2ctl graceful

#cd /var/www/html/
#mkdir checkCI_dev
echo '2.Done!!'

EOF