LINELENGTH := 100

normalize:
	isort -l$(LINELENGTH) -rc sclack
	black -t 'py38' -S -l$(LINELENGTH) sclack
	pylint --py3k --rcfile=pylintrc sclack
