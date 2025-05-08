# OptiSpend

Estimate cloud savings plan commitments using historical billing data.

[![Docker Image Build](https://github.com/Richard-Barrett/optispend/actions/workflows/docker-build.yml/badge.svg)](https://github.com/Richard-Barrett/optispend/actions/workflows/docker-build.yml)
[![Docker Publish to GHCR](https://github.com/Richard-Barrett/optispend/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/Richard-Barrett/optispend/actions/workflows/docker-publish.yml)
[![Publish to PyPI](https://github.com/Richard-Barrett/optispend/actions/workflows/publish-to-pypi.yml/badge.svg?branch=main)](https://github.com/Richard-Barrett/optispend/actions/workflows/publish-to-pypi.yml)
[![Pylint](https://github.com/Richard-Barrett/optispend/actions/workflows/pylint.yml/badge.svg)](https://github.com/Richard-Barrett/optispend/actions/workflows/pylint.yml)

## 📦 Installation

```bash
pip install optispend
```

## 🚀 Usage

```bash
optispend --profile default --commitment 0.8
optispend --profile default --optimize
```

## 🐳 Docker

```bash
docker build -t optispend .
docker run --rm -v ~/.aws:/home/optispend/.aws:ro optispend --optimize
```

## 🛠 Usage with Makefile

### Install locally
```bash
make install
```

### Build Docker image
```bash
make build
```

### Run OptiSpend using Docker
```bash
make run
```

### Clean up build artifacts
```bash
make clean
```
