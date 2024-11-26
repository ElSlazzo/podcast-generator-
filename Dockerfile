FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git 

# Install PyYAML
RUN apt-get update && apt-get install -y python3-pyyaml

# Copy your Python script to the /usr/bin directory
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script to the root directory
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Define the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
