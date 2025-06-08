.PHONY: manager worker logs
manager:
	@set -a && source .env && set +a && source manager/.venv/bin/activate && cd manager && python3 manager.py

worker:
	@set -a \
	&& source .env \
	&& set +a \
	&& source worker/.venv/bin/activate \
	&& cd worker \
	&& celery -A tasks \
	worker \
	--loglevel=INFO \
	-n local_test@mbp \
	-Q call_serie_api,save_image_volume,save_database_volume \
	--autoscale=10,3

docker-up:
	docker-compose up --build -d

docker-down:
	docker-compose down

docker-build:
	docker-compose build

docker-logs:
	docker-compose logs -f