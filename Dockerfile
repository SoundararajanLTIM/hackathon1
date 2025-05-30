# Use the latest official Python slim image as the base
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the application's port
EXPOSE 5000

# Set the command to run the Flask app
CMD ["python", "app.py"]
