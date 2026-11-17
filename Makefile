.PHONY: build up down logs migrate superuser shell

BACKEND_IMAGE = nxttrendz-app-backend
FRONTEND_IMAGE = nxttrendz-app-frontend

build:
	docker compose build

up:
	docker compose up -d --build

down:
	docker compose down

logs:
	docker compose logs -f backend

migrate:
	docker compose exec backend manage.py migrate

superuser:
	docker compose exec backend python manage.py createsuperuser

shell:
	docker compose exec backend bash
