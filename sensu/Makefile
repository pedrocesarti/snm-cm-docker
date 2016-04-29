build:
	docker build -t sensu .
run:
	docker run --name sensu --link rabbitmq:rabbitmq --link redis:redis -p 4567:4567 -d sensu 
