FROM python:3.11-slim

LABEL maintainer="Richard Barrett"
LABEL org.opencontainers.image.source="https://github.com/Richard-Barrett/optispend"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN addgroup --system optispend && \
    adduser --system --ingroup optispend --home /home/optispend optispend

WORKDIR /app

COPY . /app

RUN chown -R optispend:optispend /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    && rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir .

USER optispend

ENTRYPOINT ["optispend"]
CMD ["--help"]
