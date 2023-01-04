up-f:
	docker compose --build --remove-orphans

up:
	sudo chmod -R 777 .
	docker compose up -d --build --remove-orphans

down:
	docker compose down --remove-orphans

create:
	docker compose run web django-admin startproject $(project) .

shell:
	docker exec -it django_container /bin/sh

migrate:
	docker compose exec web python manage.py migrate
