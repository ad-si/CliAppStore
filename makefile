# TODO: Use wildcards
.PHONY: all
all: \
	apps/ag/main.png \
	apps/asciinema/main.png \
	apps/bat/main.png \
	apps/cheat/main.png \
	apps/cheat-sh/main.png \
	apps/fasd/main.png \
	apps/fzf/main.png \
	apps/gifsicle/main.png \
	apps/hub/main.png \
	apps/jq/main.png \
	apps/nnn/main.png \
	apps/npm/main.png \
	apps/pip/main.png \
	apps/shellcheck/main.png \
	apps/svgo/main.png \
	apps/tldr/main.png \
	apps/trash/main.png \
	apps/wttr/main.png \
	apps/youtube-dl/main.png \
	apps/z/main.png
	# apps/mosh/main.png \
	# apps/ranger/main.png \
	# apps/pandoc/main.png \
	# apps/autojump/main.png \
	# apps/fd/main.png \
	# apps/postgrest/main.png \
	# apps/exa/main.png \

apps/%/main.png:
	cat $(@D)/main.yaml \
	| grep '^command: ' \
	| gsed "s/^command: ['\"]\(.*\)['\"]$$/\1/" \
	> __temp__.sh
	cp carbon-now.json ~/.carbon-now.json
	npx carbon-now \
		--preset=cliappstore \
		--location $(@D) \
		__temp__.sh
	-rm __temp__.sh
	-mv $(@D)/__temp__-* $(@D)/main.png


baked: apps images templates project.yml
	sprinkles -bake
	cp CNAME baked/CNAME

.PHONY: deploy
deploy: baked
	surge baked

.PHONY: stage
stage: baked
	surge baked cliappstore.surge.sh

.PHONY: validate
validate:
	npx pajv validate -s app_schema.yaml -d apps/\*/main.yaml
