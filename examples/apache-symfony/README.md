# Symfony example

Install the symfony installer: [https://symfony.com/doc/current/setup.html](https://symfony.com/doc/current/setup.html)

Open a terminal and `cd` into this examples directory

Create a new project
```
symfony new my-project
```

Start docker compose
```
docker-compose up -d
```

Set the permissions of the var folder
```
docker exec -it web bash -c 'setfacl -dR -m u:www-data:rwX -m u:root:rwX var && setfacl -R -m u:www-data:rwX -m u:root:rwX var'

```

Open `http://localhost/`