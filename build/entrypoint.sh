#!/bin/sh
if [ "$NO_CRON" ]
then
  /executed-by-cron.sh && cat /var/log/cron.log
else
  /generate-crontab.sh > /var/log/cron.log 2>&1 \
    && cron \
    && tail -f /var/log/cron.log
fi
