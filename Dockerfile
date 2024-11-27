FROM ubuntu:latest

# Update the package list and install necessary packages
RUN apt-get install -y python3.10

# Install PyYAML
RUN pip3 install PyYAML

# Copy your Python script to the /usr/bin directory
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script to the root directory
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh
# Define the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
