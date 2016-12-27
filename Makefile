# when you run 'make' alone, run the 'css' rule (at the
# bottom of this makefile)
all: status

# .PHONY is a special command, that allows you not to
# require physical files as the target (allowing us to
# use the 'all' rule as the default target).
.PHONY: all

iter: down up

up:
	docker-compose up -d

down:
	docker-compose down

status:
	docker-compose ps

logs:
	docker-compose logs # Use docker-compose logs -f if you want to 'tail' the log output.

pull:
	docker-compose pull