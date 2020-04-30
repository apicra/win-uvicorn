# win-uvicorn
Uvicorn Server on Windows OS

## DOC

## INSTALL

    cd uvicorn

### Scripts for windows, created in example/ folder

+ uvicorn.install.bat
+ uvicorn.remove.bat
+ uvicorn.update.bat


## NGINX

      server {
        listen 80;
        server_name example.org;
        access_log  /var/log/nginx/example.log;
    
        location / {
            proxy_pass http://127.0.0.1:8000;
            proxy_set_header Host $host;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        }
      }
