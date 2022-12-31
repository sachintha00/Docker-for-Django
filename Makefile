up-f:
	docker-compose --build --remove-orphans

up:
	docker-compose up -d --build --remove-orphans

down:
	docker-compose down --remove-orphans

create-project:
	docker-compose run web django-admin startproject $(name) .

shell:
	docker-compose exec -it django_container /bin/sh

migrate:
	docker-compose exec web python manage.py migrate