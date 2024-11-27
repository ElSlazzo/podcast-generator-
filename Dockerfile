FROM ubuntu:20.04

# Update package list and install prerequisites
RUN apt-get update && apt-get install -y \
    software-properties-common

# Add the deadsnakes PPA for Python 3.10
RUN add-apt-repository ppa:deadsnakes/ppa && apt-get update

# Install Python 3.10
RUN apt-get install -y python3.10

# Install other dependencies
RUN apt-get install -y python3-pip git
