.PHONY: start
start: stop
	docker compose up -d
	open http://localhost:8787

.PHONY: stop
stop:
	docker compose down

.PHONY: rebuild
rebuild: stop
	docker compose build

.PHONY: restart
restart: stop start
