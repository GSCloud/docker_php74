all: info

info:
	@echo "\e[1;32m👾 Welcome to Docker PHP 7.4 👾"
	@echo "🆘 \e[0;1mmake build\e[0m - rebuild image"
	@echo "🆘 \e[0;1mmake docs\e[0m - rebuild documentation"
	@echo "🆘 \e[0;1mmake everything\e[0m - run all make points"
	@echo "🆘 \e[0;1mmake push\e[0m - push Docker image"
	@echo "🆘 \e[0;1mmake test\e[0m - test image"

docs:
	@/bin/bash ./create_pdf.sh

build:
	@/bin/bash ./build.sh

test:
	@/bin/bash ./test.sh

push:
	@docker push gscloudcz/php74:7.4.10

everything: docs build test push
