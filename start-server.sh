#!/bin/bash

# Pharmacy Server Start Script
# Starts CodeIgniter 4 development server

cd "$(dirname "$0")"

echo "🏥 Starting Pharmacy Server..."
echo "📍 URL: http://localhost:8080"
echo " Press Ctrl+C to stop"
echo ""

php -d error_reporting=E_ALL\&~E_DEPRECATED\&~E_STRICT spark serve --port 8080
