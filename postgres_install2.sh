#!/bin/bash
#
#
# Update package list and upgrade the system
echo "Updating package list and upgrading system..."
sudo apt update -y && sudo apt upgrade -y

# Install PostgreSQL
echo "Installing PostgreSQL..."
sudo apt install postgresql postgresql-contrib -y

# Start and enable PostgreSQL service
echo "Starting PostgreSQL service..."
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Check PostgreSQL service status
echo "Checking PostgreSQL service status..."
sudo systemctl status postgresql

# Switch to the postgres user to configure the database
echo "Switching to postgres user..."
sudo -i -u postgres




