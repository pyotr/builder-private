# Vagrant instances are suffixed with a '--vagrant' identifier
# remote instances are suffixed with an arbitrary user-created identifier

base:
    # all projects get these
    '*':
        - elife

    'master-server--*':
        - master-server


    'basebox--*':
        # basebox is used as a base for other projects for both Vagrant and AWS
        # put common big and slow deps in here
        - elife.java


    'elife-dashboard--*':
        - elife.postgresql
        - elife.nginx
        - elife.uwsgi
        - elife.acme
        - elife.no-more-daemon
        - elife-dashboard
        - elife-dashboard.uwsgi
        - elife-dashboard.scheduler


    'elife-bot--*':
        - elife.mercurial
        - elife.java # strip-coverletter requirement
        - elife.redis-server
        - elife-bot
        - elife-bot.feeder

    'elife-api--*':
        - elife.nginx
        - elife.uwsgi
        - elife.acme
        - elife-api
        - elife-api.uwsgi
        - elife-api.syslog-conf

    'lax--*':
        - elife.nginx
        - elife.uwsgi
        - elife.acme
        - elife.postgresql
        - lax
        - lax.uwsgi
        #- lax.reporting
        - elife.mercurial
        - lax.adaptors

    'journal--*':
        - elife
        - elife.php7
        - elife.nginx
        - elife.nginx-php7
        - journal

    'journal-cms--*':
        - elife
        - elife.php7
        - elife.nginx
        - elife.nginx-php7
        - elife.mysql-client
        - elife.mysql-server
        - journal-cms

    'elife-metrics--*':
        - elife.nginx
        - elife.uwsgi
        - elife.acme
        - elife.postgresql
        - elife-metrics
        - elife-metrics.uwsgi

    'elife-libraries--*':
        - elife
        - elife.php7
        - elife-libraries
        - elife.jenkins-scripts
        - elife.proofreader-php

    'elife-website--*':
        - elife.php7
        - elife.nginx
        - elife.nginx-php7
        - elife.java # required by selenium
        - elife.selenium
        - elife.mysql-client
        - elife.mysql-server
        - elife.drush
        - elife.nodejs
        - elife.solr-4
        - elife.redis-server
        - elife.phantomjs
        - elife.galen
        - elife-website
        - elife-website.load-tester
        - elife-website.nginx

    'elife-website--vagrant':
        - elife.php-xdebug
