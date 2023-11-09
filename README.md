# C9-03

Información importante:

Seguir este flujo respecto a las branches:
![Untitled 1_page-0001](https://user-images.githubusercontent.com/78238453/217380159-b1913c2d-6c65-447c-88eb-1020d7663e90.jpg)

La rama de Main es la base de los deploys, tiene configuraciones especiales y por lo tanto se debe hacer pull desde develop y evitar pushear a main.

Los PRs con features deben hacerse a release. Fixes van como hotfixes a main.

Para inicializar el proyecto, puedes hacerlo con Docker (recomendado) o localmente.

Para hacerlo con Docker, importante tener docker compose instalado (sigue esta guía https://docs.docker.com/compose/install/). 

CD a la repo

`cd yendo-app`

Build imagenes
`docker compose build`

Levantar container
`docker compose up`

Crear la BD
`docker compose run web rake db:setup`

(migra el schema cada vez que sea necesario)
`docker compose run web rake db:migrate`

Para ejecutarlo localmente, elimina "config/database.yml" y renombra "config/database.yml.example" por "config/database.yml" (NO incluyás ese archivo en los commits, aunque si lo incluí en el gitignore), luego crea la BD

`rails db:create`

y ejecuta el server

`rails s`

(recuerda instalar el bundle primero)
