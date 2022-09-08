setup:
	python3 -m venv ~/.myrepotest

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepotest tests/*.py
	#PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb


lint:
	pylint --disable=R,C myrepolib cli web

all: install lint test
