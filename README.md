# Docker-for-Django

docker-compose build

docker-compose run web django-admin startproject mysite .

docker-compose up -d --build

docker-compose exec web python manage.py migrate