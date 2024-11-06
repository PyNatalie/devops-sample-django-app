FROM python:3.8.20-slim
RUN pip install --upgrade pip
RUN apt-get -y update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    postgresql-client \
    openssl libssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /devops-sample-django-app
COPY . .
RUN pip install -r requirements.txt
CMD ["uwsgi", "--http", ":8000", "--module", "parrotsite.wsgi"]



