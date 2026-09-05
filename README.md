# Pharmacy Management System

A complete pharmacy management system built on **CodeIgniter 4.0.4** with PHP 7.2-8.x compatibility.

## Features

- 🏥 Complete pharmacy management (medicines, customers, manufacturers, invoices, purchases)
- 👥 Multi-role user management with permissions
- 💊 Medicine stock tracking with expiry & low-stock alerts
- 💰 Full accounting module (vouchers, ledger, P&L, balance sheet, cash flow)
- 📊 Sales/purchase reports with user/category/product breakdowns
- 🧾 POS invoicing, service invoicing, returns
- 👔 HR module (employees, attendance, payroll, expenses)
- 💵 Tax settings
- 🌓 **Dark/Light mode toggle** (click moon/sun icon in navbar)
- 🎨 **6 theme presets** (Default, Forest Green, Navy Blue, Royal Purple, Sunset Orange, Midnight Dark)
- 🔐 Password recovery via email
- 📥 Web-based installer (`php spark database:import`)

## Quick Start

### Prerequisites
- PHP 7.2 or higher (tested on 8.0, 8.1, 8.2, 8.3)
- MySQL/MariaDB
- Composer
- PHP extensions: `intl`, `curl`, `json`, `mbstring`, `mysqli`

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/jarir2020/pharmacy-management-system.git
cd pharmacy-management-system

# 2. Run the setup script (installs deps, creates .env, copies assets)
chmod +x setup.sh
./setup.sh

# 3. Edit .env with your database credentials
nano .env

# 4. Import the database
php spark database:import --force

# 5. Start the development server
./start-server.sh
```

Then open **http://localhost:8080** in your browser.

### Default Login

| Field | Value |
|-------|-------|
| Email | `admin@gmail.com` |
| Password | `123456` |

## Project Structure

```
pharmacy-management-system/
├── app/                    # Application code (CodeIgniter 4)
│   ├── Commands/           # Custom spark commands
│   ├── Config/             # App configuration
│   ├── Controllers/        # Base controllers
│   ├── Libraries/          # Custom libraries
│   ├── Modules/            # 16 application modules
│   └── Views/              # Templates and views
├── assets/                 # CSS, JS, images, plugins
├── database/               # SQL schema dump
├── public/                 # Web root (auto-populated by setup.sh)
│   ├── index.php           # Front controller
│   └── assets/             # Copy of /assets for the built-in server
├── system/                 # CodeIgniter framework
├── tests/                  # 107 PHPUnit tests
├── writable/               # Cache, logs, sessions (auto-created)
├── composer.json           # PHP dependencies
├── phpunit.xml.dist        # PHPUnit configuration
├── setup.sh                # First-time setup script
├── start-server.sh         # Start the dev server
└── spark                   # CodeIgniter CLI
```

## Useful Commands

```bash
# Import the database
php spark database:import --force

# Run the test suite
composer test
# or
./vendor/bin/phpunit

# Start the dev server
./start-server.sh
```

## Configuration

All configuration is via `.env` (copy from `.env.example`):

```env
CI_ENVIRONMENT = development
app.baseURL = 'http://localhost:8080'

database.default.hostname = localhost
database.default.database = pharmacy_db
database.default.username = root
database.default.password = root
```

## Testing

107 unit tests covering all modules:

```bash
./vendor/bin/phpunit
```

## Theming

- **Dark/Light mode:** click the moon/sun icon in the top navbar
- **Color presets:** Settings → Panel Settings → choose a preset (6 options)

## Server Requirements

- PHP 7.2+ (tested up to 8.3)
- MySQL 5.7+ / MariaDB 10.2+
- 50MB disk space for assets

## Credits

Originally based on Bdtask Pharmacare. Updated and maintained for PHP 8.x compatibility.
