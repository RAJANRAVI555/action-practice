# Base image
FROM python:3.11-slim

# Working directory
WORKDIR /app

# Copy dependency file first for caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

EXPOSE 5000
CMD ["python", "app.py"]
