FROM python:3.12-slim

# System packages install karein jo psycopg2 (PostgreSQL) ke liye zaroorat hain
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Environment variables set karein
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Working directory set karein
WORKDIR /app

# Pip ko upgrade karein aur dependencies install karein
RUN pip install --no-cache-dir --upgrade pip
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Pura project copy karein
COPY . /app/

# Port expose karein
EXPOSE 8000

# Server run karne ki command
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]