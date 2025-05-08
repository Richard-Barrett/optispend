.PHONY: help install build run clean

help:
	@echo ""
	@echo "OptiSpend CLI Makefile"
	@echo ""
	@echo "Available targets:"
	@echo "  install     Install OptiSpend in editable mode (pip install -e .)"
	@echo "  build       Build the Docker image"
	@echo "  run         Run the Docker container with AWS credentials"
	@echo "  clean       Remove build artifacts"
	@echo ""

install:
	pip install -e .

build:
	docker build -t optispend .

run:
	docker run --rm \\
	  -v ~/.aws:/home/optispend/.aws:ro \\
	  optispend --optimize

clean:
	rm -rf dist build *.egg-info
