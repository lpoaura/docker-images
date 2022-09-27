build-matomo:
	docker build -t lpoaura/matomo-cron:fpm-alpine ./matomo

publish-matomo:
	docker push lpoaura/matomo-cron:fpm-alpine

matomo: build-matomo publish-matomo


build-powa:
	docker build -t lpoaura/powa-web:latest ./powa/powa-web

publish-powa:
	docker push lpoaura/powa-web:latest

powa: build-powa publish-powa
