#@author Filip Oščádal <git@gscloud.cz>
all: info

info:
	@echo "\e[1;32m👾 Welcome to Docker PHP 7.4 👾\n"

	@echo "🆘 \e[0;1mmake build\e[0m - build image"
	@echo "🆘 \e[0;1mmake docs\e[0m - rebuild documentation"
	@echo "🆘 \e[0;1mmake push\e[0m - push image into the registry"
	@echo "🆘 \e[0;1mmake test\e[0m - test image"

docs:
	@echo "🔨 \e[1;32m Building documentation\e[0m"
	@bash ./bin/create_pdf.sh

build:
	@echo "🔨 \e[1;32m Building image\e[0m"
	@bash ./bin/build.sh

test:
	@echo "🔨 \e[1;32m Testing image\e[0m"
	@bash ./bin/test.sh

push:
	@echo "🔨 \e[1;32m Pushing image to Docker hub\e[0m"
	docker push gscloudcz/php74:latest

everything: docs build test push
