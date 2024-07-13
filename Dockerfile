FROM python:3.12-alpine3.18
LABEL mantainer="victorsoaresferreira09@gmail.com"

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /code

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH"

# Copy pyproject.toml and poetry.lock
COPY pyproject.toml poetry.lock /code/

# Install dependencies
RUN poetry install

# Copy the Django project files
COPY . /code/

# Ensure the .env file is copied
COPY .env /code/
