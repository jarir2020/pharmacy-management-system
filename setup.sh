#!/bin/bash
# Setup script for first-time installation after cloning
# Run this after: git clone ...

set -e

cd "$(dirname "$0")"

echo "🔧 Setting up Pharmacy Management System..."
echo ""

# 1. Install composer dependencies
if [ ! -d "vendor" ]; then
    echo "📦 Installing composer dependencies..."
    composer install --no-interaction
else
    echo "✓ Vendor already exists, skipping composer install"
fi

# 2. Create .env from example
if [ ! -f ".env" ]; then
    echo "📝 Creating .env from .env.example..."
    cp .env.example .env
else
    echo "✓ .env already exists, skipping"
fi

# 3. Setup writable directory
echo "📁 Setting up writable directory..."
mkdir -p writable/cache writable/logs writable/session writable/debugbar
chmod -R 0777 writable

# 4. Copy assets to public (for built-in PHP dev server)
if [ ! -d "public/assets" ]; then
    echo "🎨 Copying assets to public/..."
    cp -r assets public/assets
else
    echo "✓ public/assets already exists, skipping"
fi

# 5. Create public/index.php
if [ ! -f "public/index.php" ]; then
    echo "🚪 Creating public/index.php..."
    cp index.php public/index.php
else
    echo "✓ public/index.php already exists, skipping"
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Edit .env with your database credentials"
echo "  2. Import the database:"
echo "     php spark database:import --force"
echo "  3. Start the server:"
echo "     ./start-server.sh"
echo ""
echo "Default login:"
echo "  Email:    admin@gmail.com"
echo "  Password: 123456"
echo ""
