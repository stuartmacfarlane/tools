#!/bin/bash
DATE=`date '+%Y-%m-%d %H:%M:%S'`
AVG=$(ps --no-headers -o "rss,cmd" -C php-fpm | awk '{ sum+=$1 } END { printf ("%d%s\n", sum/NR/1024,"M") }')
QTY=$(ps -ylC php-fpm --sort:rss | wc -l)
echo "$DATE - $AVG average memory usage over $QTY PHP-FPM processes"
exit 0