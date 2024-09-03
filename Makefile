install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv Tests/test_hello.py


lint:
	pylint --disable=R,C Tests/hello.py

all: install lint test