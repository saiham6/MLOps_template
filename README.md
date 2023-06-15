# Enterprise MLOps Project Template

An enterprise grade Machine Learning project scaffold for streamlining MLOps best practices. 


## Features

- Quickly create dev/prod environments
- MLOps Best Practices at heart
- Bring your own project to enterprise grade repository
- CI/CD Integrations
- Micro-Service Architecture
- Cross platform/ Multi-Cloud Architecture
- Scientist/DataEng/MLEng/PlatformEng teams can collaborate easily


## Usage

Write your own files suited to each category folder. 

Example: Writing a Makefile for the project 

```m
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
```

Example: Writing a Terraform for the project as Docker

```terraform
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_container" "lamda_terraform" {
  image = "lamda_test"
  name = "lamda-terraform"
  ports {
    internal = 8080
    external = 9000
  }
}
```
## Roadmap

- Add jenkins support
- Add kubernetes scale-out template
- Add demo infrastucture code



## Feedback

If you have any feedback, please reach out to me at saiham.rahman@outlook.com