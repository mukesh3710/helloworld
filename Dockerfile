# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy application code into the container
COPY app.py /app

# Install dependencies
RUN pip install flask

# Expose the port the app will run on
EXPOSE 9000

# Command to run the application
CMD ["python", "app.py"]
