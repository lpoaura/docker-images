build-matomo:
	docker build -t lpoaura/matomo-cron:fpm-alpine ./matomo

publish-matomo:
	docker push lpoaura/matomo-cron:fpm-alpine

matomo: build-matomo publish-matomo

