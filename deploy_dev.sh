#!/bin/bash

ssh -o "StrictHostKeyChecking no" ec2-user@54.238.158.106 << EOF

echo '1. Updating sources'

cd /var/www/html/laravel_pj1
git pull
composer install -n --prefer-dist --ignore-platform-reqs

echo '2.Done!!!'

EOF