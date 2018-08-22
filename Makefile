help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

up:       ## Runs the application in development mode
	@docker-compose -f docker-compose.yml -f docker-compose.development.yml up --build

up-prod:  ## Runs the application in production mode
	@docker-compose up --build

down:     ## Stops the application
	@docker-compose down