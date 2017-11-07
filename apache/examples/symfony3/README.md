# Symfony 3 example

Install the symfony installer: [https://symfony.com/doc/current/setup.html](https://symfony.com/doc/current/setup.html)

Create a new project
```
symfony new my_project
```

Start docker compose
```
docker-compose up -d
```

Set the permissions of the var folder
```
docker exec -it symfony3_web_1 bash -c 'setfacl -dR -m u:www-data:rwX -m u:root:rwX var && setfacl -R -m u:www-data:rwX -m u:root:rwX var'

```
Note: you might have to replace the container name `symfony3_web_1` with your own if the root directory is not named 'symfony3'

Open `http://localhost/`