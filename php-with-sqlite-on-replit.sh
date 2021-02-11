#!/bin/bash
# Install SQLite3 with PHP on Repl.it
# 
# Create a new Repl.it as a PHP Web Server and run this script.
# wget -O - https://raw.githubusercontent.com/ethanpil/php-with-sqlite-on-replit/master/php-with-sqlite-on-replit.sh | bash

#Download, extract and cleanup required missing PHP modules (MySQL for PDO and SQLite for SQLITE!)
wget http://archive.ubuntu.com/ubuntu/pool/main/p/php7.2/php7.2-sqlite3_7.2.24-0ubuntu0.18.04.7_amd64.deb
for Module in $( ls php*.deb ); do dpkg -x $Module .; done
mkdir ~/$REPL_SLUG/php
cp usr/lib/php/*/* ~/$REPL_SLUG/php
for Module in $( ls ~/$REPL_SLUG/php/*.so ); do echo "extension=$Module" >> ~/$REPL_SLUG/php/php.ini; done
rm -rf ./etc/ 
rm -rf ./usr/
rm php7.2-sqlite3_7.2.24-0ubuntu0.18.04.7_amd64.deb

#Setup the repl to start PHP with the correct php.ini that includes our modules
echo 'run = "php -c ~/$REPL_SLUG/php/php.ini -S 0.0.0.0:8000"' >> .replit

echo "Done!"
