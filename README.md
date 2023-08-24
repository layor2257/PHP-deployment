# PHP-deployment

install docker

install PHP

install composer

install certbot

the application should be in this directory: /var/www

Create an nginx file and put the nginx configuration.

to troublehsoot nginx issue:

How to check Nginx logs

<img width="1436" alt="Pasted Graphic" src="https://github.com/layor2257/PHP-deployment/assets/49678841/87711ac6-6dcf-45cb-8318-ad979a967bc6">

The error here was because the composer was not installed when trying to run a PHP app

<img width="612" alt="Pasted Graphic 1" src="https://github.com/layor2257/PHP-deployment/assets/49678841/655d1e5b-01c0-4df2-a10a-fdb0d313255b">

when doing a fresh deployment, in case you copy the nginx configuration here, remove the certbot part and use this command to add certbot configuration to the endpoint:

sudo certbot --nginx -d example.com 
