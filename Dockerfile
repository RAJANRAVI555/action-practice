# Use an official lightweight Python base image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency list first (for better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files
COPY . .

# Expose port 5000 to the outside world
EXPOSE 5000

# Command to run your Flask app
CMD ["python", "app.py"]
