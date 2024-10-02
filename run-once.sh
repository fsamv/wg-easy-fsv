docker compose --file docker-compose-nginx.yml up -d
docker exec -it nginx /bin/sh
cp /etc/nginx/servers/wg-easy.conf /etc/nginx/conf.d/.
certbot --nginx --non-interactive --agree-tos -m webmaster@google.com -d 1460469-cz52311.tw1.ru
rm -rf /etc/nginx/conf.d/default.conf
nginx -s reload
exit