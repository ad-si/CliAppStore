.PHONY: help
help: makefile
	@tail -n +4 makefile | grep ".PHONY"


.PHONY: build
build: apps/ag/main.png \
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
	apps/z/main.png \
	apps/mosh/main.png \
	apps/ranger/main.png \
	apps/pandoc/main.png \
	apps/autojump/main.png \
	apps/fd/main.png \
	apps/postgrest/main.png \
	apps/exa/main.png \
	baked


apps/%/main.png:
	cat $(@D)/main.yaml \
	| grep '^command: ' \
	| gsed "s/^command: ['\"]\(.*\)['\"]$$/$$ \1/" \
	> __temp__.sh

	silicon __temp__.sh \
		--output $(@D)/main.png \
		--language bash \
		--no-line-number \
		--background '#adb7c1' \
		--pad-horiz 40 \
		--pad-vert 30 \
		--font 'Hack=36'


baked: apps images templates project.yml
	sprinkles -bake
	cp CNAME baked/CNAME


.PHONY: validate
validate:
	bunx pajv validate -s app_schema.yaml -d apps/\*/main.yaml
