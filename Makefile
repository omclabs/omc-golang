DOCKER_COMPOSE_ARM=docker-compose -f docker-compose-arm.yml


###############################################################
## database
###############################################################
start-dev:
	@$(DOCKER_COMPOSE_ARM) up
stop-dev:
	@$(DOCKER_COMPOSE_ARM) stop
down-dev:
	@$(DOCKER_COMPOSE_ARM) down --remove-orphans



###############################################################
## migrations
###############################################################
migrate-create:
	@(cd migration; file_name="$(file_name)" env="$(env)" make migration-create)
migrate-up:
	@(cd migration; env="$(env)" make migrate-up)
migrate-down:
	@(cd migration; env="$(env)" make migrate-down)
migrate-status:
	@(cd migration; env="$(env)" make migrate-status)
