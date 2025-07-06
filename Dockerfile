# Use Ubuntu as the base image
FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Set work directory
WORKDIR /app

# Copy your project files
COPY . /app

# Install Flask
RUN pip3 install flask

# Expose the port Flask runs on
EXPOSE 5000

# Run the Flask app
CMD ["python3", "app.py"]