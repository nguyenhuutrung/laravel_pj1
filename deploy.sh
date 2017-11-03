#!/bin/bash

ssh -o "StrictHostKeyChecking no" ec2-user@54.238.158.106 << EOF
# if [ "$1" = "master" ]; then
# 	ssh -o "StrictHostKeyChecking no" ec2-user@54.238.158.106 << EOF
# elif [ "$1" = "staging" ]; then
# 	ssh -o "StrictHostKeyChecking no" ec2-user@54.238.158.106 << EOF
# fi

echo "$1"
echo '1. Updating sources'

# if [ "$1" = "master" ]; then  
# 	cd /var/www/html/laravel_pj1
# elif [ "$1" = "staging" ]; then
# 	cd /var/www/html/checkstaging/laravel_pj1
# fi
cd /var/www/html/laravel_pj1
git pull
composer install -n --prefer-dist --ignore-platform-reqs

echo '2.Done!!!'

EOF