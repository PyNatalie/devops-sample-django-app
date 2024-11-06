<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0
- uWSGI==2.0.28

<h3>Deployment</h3>

____


* Change environment variables if you need in .env file:
```yaml
      DJANGO_DB_HOST: db
      DJANGO_DB_NAME: app
      DJANGO_DB_USER: worker
      DJANGO_DB_PASS: worker
      DJANGO_DB_PORT: "5432"
      DJANGO_DEBUG: "False"
```


* Run Docker containers:
```shell
docker-compose up
```
* Open app:
```
    http://127.0.0.1:8000 
```

*  Stop containers:
```shell
    docker-compose stop
```

*  Delete containers:
```shell
    docker-compose down
```

