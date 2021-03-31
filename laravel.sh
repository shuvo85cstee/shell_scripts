#!/bin/bash
/var/www/html/laravel5/artisan schedule:run >> /dev/null 2>&1
echo "done"
