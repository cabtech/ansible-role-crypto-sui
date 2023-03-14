lint: .ylint .alint

.ylint:
	yamllint --config-file=.config/yamllint .

.alint:
	ansible-lint --config-file=.config/ansible-lint.yml .

clean:
	@/bin/rm -f .alint .ylint
