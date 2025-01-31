# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
