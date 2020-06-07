# Tools

## average_php_fpm.sh
This script calculators the average PHP memory used per PHP-FPM process currently running.
Run this on a cronjob and log the output to get an idea over time.
Useful for optimizing PHP-FPM max children based on available memory.
