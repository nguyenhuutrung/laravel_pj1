#!/bin/bash
wget -qO- http://checkip.amazonaws.com

ssh -o "StrictHostKeyChecking no" $2 << EOF

echo '1. Updating sources'

# if [ $1 = "master" ]; then  
# 	cd /var/www/html/laravel_pj1
# elif [ $1 = "staging" ]; then
# 	cd /var/www/html/checkstaging/laravel_pj1
# fi
# git pull
# composer install -n --prefer-dist --ignore-platform-reqs

echo '2.Done!!!'

EOF

wget -qO- http://checkip.amazonaws.com