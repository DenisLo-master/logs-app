	#  docker run -d -p 3000:4200 --rm --env-file ./config/.env --name logsapp logsapp:env
run: 
	docker run -d -p 3000:4200 -v logs:/app/data --rm  --name logsapp logsapp:volumes 
run-dev: 
	docker run -d -p 3000:4200 -v "/Users/denisloginov/Documents/Development/logs-app:/app" -v /app/node_modules -v logs:/app/data --rm  --name logsapp logsapp:volumes 
stop:
	docker stop logsapp