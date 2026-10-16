lint: .ylint .alint

.ylint:
	uv run yamllint --config-file=.config/yamllint .

.alint:
	uv run ansible-lint --config-file=.config/ansible-lint.yml .

clean:
	@/bin/rm -f .alint .ylint

# --------------------------------

init-uv:
	uv python install 3.14
	uv init
	uv python pin python3.14
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

update-uv:
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null
