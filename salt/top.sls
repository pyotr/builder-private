# Vagrant instances are suffixed with a '--vagrant' identifier
# remote instances are suffixed with an arbitrary user-created identifier

base:
    # all projects get these
    '*':
        - elife
        - continuum

    'master-server--*':
        - master-server

    'lax--*':
        - elife.python3
        - elife.nginx
        - elife.uwsgi
        - elife.postgresql
        - elife.mercurial
        - lax
        - lax.uwsgi
        - lax.query-upload
        # required by bot-lax-adaptor:
        - elife-reporting
        - lax.adaptors

    'api-dummy--*':
        - elife.php7
        - elife.composer
        - elife.nginx
        - elife.nginx-php7
        - api-dummy
        - api-dummy.nginx

    'journal--*':
        - elife.php7
        - elife.composer
        - elife.nginx
        - elife.nginx-php7
        - elife.nginx-error-pages
        - elife.nodejs6
        - elife.redis-server
        - journal.curl-7-36
        - journal
