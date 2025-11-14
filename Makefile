.PHONY: create-project
create-project:
	hugo new site my-docs

init-module:
	hugo mod init github.com/CoffeeEngine/my-docs

add-theme:
	hugo mod get github.com/google/docsy

tidy-mod:
	hugo mod tidy

fetch-vendor:
	hugo mod vendor

add-content:
	hugo new content/post.md

add-docs:
	hugo new docs/intro.md

add-blog:
	hugo new blog/hello

add-postcss:
	npm init -y
	npm install -D postcss postcss-cli autoprefixer

init-postcss-config:
	sh ./init-postcss.sh

run-local:
	hugo server

build-static:
	hugo

deploy-gh:
	git push

.PHONY: update-hugo
update-hugo:
	go install -tags extended github.com/gohugoio/hugo@latest