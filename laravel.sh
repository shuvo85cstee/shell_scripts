#!/bin/bash
/var/www/html/inventory.sebpo.net/laravel5/artisan schedule:run >> /dev/null 2>&1
echo "done"
