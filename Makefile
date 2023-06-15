install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py
	lint Dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile

test:
	python -m pytest -vv --cov=hello test_hello.py

deploy:
	echo "deploy goes here"

all: install lint test