up:
	@docker-compose up -d

first-up:
	@docker-compose up -d
	@make migrate-db
	@make load-dump

migrate-db:
	@echo "\n\033[01;33m Migrate database\033[0m"
	@docker-compose exec -T app python3 manage.py migrate

load-dump:
	@echo "\n\033[01;33m Load dump\033[0m"
	@docker-compose exec -T db psql -U postgres app_db < dump.sql

logs-app:
	@docker-compose logs -f app

down:
	docker-compose down
