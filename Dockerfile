# Dockerfile
# Use a base image suitable for your development environment (e.g., Ubuntu)
FROM ubuntu:latest

# Add your setup instructions here
RUN apt-get update && apt-get install -y \
    # Install necessary software and dependencies
    build-essential \
    curl \
    git \
    libssl-dev \
    pkg-config \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and setuptools
RUN python3 -m pip install --upgrade pip setuptools

# Install norminette (https://github.com/42School/norminette)
RUN python3 -m pip install norminette

# Install francinette (https://github.com/xicodomingues/francinette)
RUN curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh | sh
