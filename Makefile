init: docker-down-clear docker-pull docker-build docker-up
up: docker-up
down: docker-down
restart: down up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build
ci:
	docker-compose run --rm backend-php-cli composer install

perm:
	sudo chown ${USER}:${USER} backend/bootstrap/cache -R
	sudo chown ${USER}:${USER} backend/storage -R
	sudo chown ${USER}:${USER} backend/storage/logs -R
	sudo chown ${USER}:${USER} backend/app/ -R
	sudo chown ${USER}:${USER} backend/config/ -R
	sudo chown ${USER}:${USER} backend/database/ -R