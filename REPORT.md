# Pharmacy vs Pharmacy2 — Comparison Report

**Date:** 2026-09-05  
**Base Path:** `/home/jarir-ahmed/Documents/pharmacy`

---

## Executive Summary

**`pharmacy2` is an updated version of `pharmacy`.** The two projects share nearly identical codebases with only 4 files differing and 11 files unique to `pharmacy2`. The differences are:

1. **Database credentials** (different MySQL databases)
2. **An auto-update sidebar menu** added to `pharmacy2`
3. **A full installation wizard** (`install/` directory) exclusive to `pharmacy2`
4. **Additional uploaded images** (favicon, logo, user photos)
5. **Minor PHP version difference** in `.htaccess`

---

## Project Type

Both are **CodeIgniter 4** PHP applications with a modular architecture. Both require PHP ≥ 7.2.

```json
{
  "name": "codeigniter4/framework",
  "type": "project",
  "description": "The CodeIgniter framework v4"
}
```

---

## File Count Comparison

| Directory       | pharmacy | pharmacy2 | Notes                     |
|----------------|----------|-----------|---------------------------|
| `system/`      | 415      | 415       | Identical framework files |
| `app/`         | 339      | 339       | Almost identical          |
| `assets/`      | 2,947    | 2,954     | +7 images in pharmacy2    |
| `writable/`    | 213      | 668       | More session/cache files  |
| `public/`      | 3        | 3         | Identical                 |
| `install/`     | —        | 47        | **Unique to pharmacy2**   |
| `.well-known/` | —        | 2         | **Unique to pharmacy2**   |

---

## Differences Found (4 files differ)

### 1. `app/Config/Database.php` — Database Credentials

| Setting      | pharmacy               | pharmacy2               |
|-------------|------------------------|-------------------------|
| `username`  | `creativedesignbd_phar` | `creativedesignbd_pahrmacy` |
| `password`  | `!WC*+5))kx2n`         | `p#%k@Z)b=1sh`         |
| `database`  | `creativedesignbd_phar` | `creativedesignbd_pahrmacy` |

**Verdict:** `pharmacy2` points to a different database (`pahrmacy` vs `phar`). This is a deployment/environment difference, not a code change.

### 2. `app/Views/template/header.php` — Blank Lines Removed

`pharmacy` has 16 blank lines (lines 34-49) that `pharmacy2` removed. No functional change — just whitespace cleanup.

### 3. `app/Views/template/sidebar.php` — Auto-Update Menu Added

`pharmacy2` adds an **auto-update menu section** at the end of the sidebar (visible only to admin users):

```php
<?php if(session('isAdmin') == 1){?>
<li class="...">
   <a class="has-arrow material-ripple" href="#">
      <i class="fab fa-autoprefixer mr-2"></i> autoupdate </a>
   <ul class="nav-second-level ...">
     <li class="...">
       <a href="<?php echo base_url('autoupdate/autoupdate')?>"> autoupdate</a>
     </li>
   </ul>
</li>
<?php }?>
```

**Verdict:** New feature — admin-only auto-update menu item in sidebar.

### 4. `.htaccess` — PHP Version Change

| Setting | pharmacy     | pharmacy2    |
|---------|-------------|-------------|
| PHP     | `ea-php74`  | `ea-php72`  |

**Verdict:** `pharmacy` was configured for PHP 7.4, `pharmacy2` for PHP 7.2. Likely a hosting environment difference.

### 5. `assets/data/backup/backup.sql` — Different Backup Content

Database backup files differ — expected since they point to different databases.

---

## Files Unique to `pharmacy2`

### 1. `install/` — Full Installation Wizard (47 files)

A complete application installer with:

- **PHP Classes:** `Database.php`, `DbImport.php`, `FileWrite.php`, `Helper.php`, `Requirements.php`, `Validation.php`, `Verification.php`
- **SQL Schema:** `install/sql/install.sql`
- **Installation Flag:** `install/flag/env`
- **Frontend Assets:** Installer UI (CSS, JS, fonts, images)
- **Error Log:** `install/error_log`

This allows end-users to install the application via a web-based wizard.

### 2. `.well-known/acme-challenge/`

SSL certificate challenge directory (Let's Encrypt). Empty — just infrastructure for HTTPS.

### 3. Uploaded Images (7 files)

| Folder                          | Files |
|--------------------------------|-------|
| `assets/dist/img/favicon/`     | 3 uploaded JPG/PNG files |
| `assets/dist/img/logo/`        | 3 uploaded PNG files |
| `assets/dist/img/user/`        | 1 uploaded JPG file |

These are user-uploaded assets (site logos, favicons, user photos).

---

## Application Modules (Identical in Both)

Both projects contain the same 16 modules:

1. **Account** — Vouchers, trial balance, ledger, P&L, balance sheet, cash flow
2. **Autoupdate** — Auto-update system
3. **Bank** — Bank management
4. **Customer** — Customer management, ledgers, credit/paid
5. **Dashboard** — Main dashboard, auth, users, permissions, settings
6. **Hrm** — HR: employees, attendance, payroll, loans
7. **Invoice** — Invoicing, POS, product listing
8. **Manufacturer** — Manufacturer management
9. **Medicine** — Medicine CRUD, categories, barcode, QR code
10. **Purchase** — Purchase orders/forms
11. **Report** — Sales/purchase reports
12. **Returns** — Invoice returns, manufacturer returns, wastage
13. **Search** — Search across invoices, medicines, purchases
14. **Service** — Service invoicing
15. **Stock** — Stock management, batch reports
16. **Tax** — Income tax settings

---

## Conclusion

| Aspect                  | Status |
|------------------------|--------|
| **Core Application**   | Identical — same modules, controllers, models, views |
| **Framework**          | Identical — same CodeIgniter 4 version |
| **Database Config**    | Different — different MySQL credentials |
| **New Features**       | Auto-update menu in sidebar (admin only) |
| **New Directories**    | `install/` (web installer), `.well-known/` (SSL) |
| **Images**             | 7 additional uploaded images |
| **Code Quality**       | `pharmacy2` has minor whitespace cleanup |

### Verdict: `pharmacy2` is an updated version of `pharmacy` with:

1. ✅ A **web-based installer** (`install/` directory)
2. ✅ An **auto-update menu** in the admin sidebar
3. ✅ **Different database credentials** (separate deployment)
4. ✅ **Minor cleanup** (removed blank lines in header.php)
5. ✅ **Additional uploaded assets** (logos, favicons, user photos)

**Both projects are functionally identical** except for the installer and auto-update features added to `pharmacy2`.
