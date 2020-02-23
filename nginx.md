* create new conf file under `/etc/nginx/sites-available` with new config:
```
server {
  listen 80;

  #name of the server, use domain or static ip address
  server_name 192.168.1.11;

  proxy_set_header Host $host;
  proxy_set_header X-Forwarded-For $remote_addr;

  location /s1/ {
    proxy_pass "http://localhost:3001/";
  }

  location /s2/ {
    proxy_pass "http://localhost:3002/";
  }
}
```
* create sym link to `sites-enable`
```
sudo ln -s /etc/nginx/sites-available/stuff.conf /etc/nginx/sites-enabled/stuff.conf
```
* reload nginx
```
sudo nginx -s reload
```
