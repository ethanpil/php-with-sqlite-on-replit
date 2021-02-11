# Use PHP with sqlite on Repl.it
Easy setup SQLite 3 with PHP on Repl.it

## How
1. Create a new Repl.it as a PHP Web Server
2. In the console, run this script:<br>
 `wget -O - https://raw.githubusercontent.com/ethanpil/php-with-sqlite-on-replit/main/php-with-sqlite-on-replit.sh | bash`
3. Use sqlite with PDO!

## Notes:
You can test using the included test.php file in this repo. It will create a new sqlite file and run a query.

## How It Works

*Overview*

[Repl.it](https://repl.it/) does not have the SQLite extension installed in the PHP environments. We also have quite a few limitations. The shell is quite hardened, and we cannot install packages or even modify the path. PHP code that is available via the public port is served by  [PHP's Command Line Web Server](https://www.php.net/manual/en/features.commandline.webserver.php) and passed through to port 80 via the repl's public URL.

*Getting the PHP Modules loaded*

Luckily, we know that Repl.it runs [Ubuntu](https://hub.docker.com/r/replco/polygott) as the base image for all languages. What we have to do is download the correct PHP modules for Ubuntu and then get PHP to load them at runtime. Fortunately, Repl.it also allows us to [define a custom run command](https://docs.repl.it/repls/dot-replit) where we can force PHP start the Command Line Web Server but using our customized php.ini file which loads the modules.

## Paths
The php modules are downloaded to `~/php` and the .ini file is created there as well

## Thanks & Credits
* The Repl.it team for an powerful tool and environment
* The PHP team for their dedication
* The SQLite team for their amazing work
* My starting point https://repl.it/talk/learn/Installing-WordPress-on-Replit/34284
* My first repl script: https://github.com/ethanpil/wordpress-on-replit
