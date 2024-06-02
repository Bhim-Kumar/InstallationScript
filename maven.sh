#!/bin/bash

# Update package index
sudo apt update

# Install Maven
sudo apt install -y maven

# Set MAVEN_HOME and update PATH
echo "export MAVEN_HOME=/usr/share/maven" >> ~/.bashrc
echo "export PATH=\$MAVEN_HOME/bin:\$PATH" >> ~/.bashrc

# Apply changes
source ~/.bashrc

# Verify the installation
mvn -version
