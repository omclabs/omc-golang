migration-create:
	@sql-migrate new -env=$(env) $(file_name)

migrate-status:
	@sql-migrate status -env=local

migrate-up:
	@sql-migrate up -config=dbconfig.yml -env=$(env)

migrate-down:
	@sql-migrate down -config=dbconfig.yml -env=$(env)
