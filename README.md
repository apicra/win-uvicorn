# win-uvicorn
Uvicorn Server on Windows OS



## DOC

## INSTALL




    cd gunicorn

### Scripts for windows, created in example/ folder

+ gunicorn.install.bat
+ gunicorn.remove.bat
+ gunicorn.update.bat


## USAGE


    gunicorn [OPTIONS] APP_MODULE

    gunicorn -w 4 myapp:app
 
    gunicorn --workers=2 'test:create_app()'
     
    gunicorn --paste development.ini -b :8080 --chdir /path/to/project

## EXAMPLE

    def app(environ, start_response):
        """Simplest possible application object"""
        data = b'Hello, World!\n'
        status = '200 OK'
        response_headers = [
            ('Content-type', 'text/plain'),
            ('Content-Length', str(len(data)))
        ]
        start_response(status, response_headers)
        return iter([data])


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
