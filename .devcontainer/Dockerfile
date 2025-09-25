FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget gnupg curl software-properties-common

# Install Zulu OpenJDK 21
RUN curl -fsSL https://repos.azul.com/azul-repo.key | gpg --dearmor -o /usr/share/keyrings/azul.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list && \
    apt-get update && \
    apt-get install -y zulu21-jdk

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Install Salesforce CLI (sf)
RUN curl -sSf https://developer.salesforce.com/media/salesforce-cli/sf/channels/stable/install.sh | bash

# Install Salesforce CLI (sfdx)
RUN curl -sSf https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/install.sh | bash

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/zulu-21-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
