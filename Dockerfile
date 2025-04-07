FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install curl for healthcheck
RUN apt-get update && apt-get install -y curl && apt-get clean

# Copy source code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
