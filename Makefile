DIR={{ project_name }}

.PHONY: black
black:
	@poetry run black ${DIR}/

.PHONY: check-migrations
check-migrations:
	@poetry run python ${DIR}/manage.py makemigrations --dry-run --check

.PHONY: flake8
flake8:
	@poetry run flake8 ${DIR}/

.PHONY: isort
isort:
	@poetry run isort ${DIR}/

.PHONY: run
run:
	@poetry run ${DIR}/manage.py runserver

.PHONY: shell
shell:
	@poetry run ${DIR}/manage.py shell_plus

.PHONY: test
test:
	@poetry run pytest ${DIR}/
