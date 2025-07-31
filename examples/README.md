
## create cert

```
docker compose exec nginx certbot certonly --webroot -w /var/www/certbot  -n --rsa-key-size 4096   --agree-tos --register-unsafely-without-email --domains "<domain>"
```

## show cert validate

```
openssl x509 -in certbot/conf/archive/<domain>/fullchain.pem -noout -dates
```

## manual renew cert

```
docker compose exec nginx certbot renew
```
