# Vagrant instances are suffixed with a '--vagrant' identifier
# remote instances are suffixed with an arbitrary user-created identifier

base:
    # all projects get these
    '*':
        - elife

    'master-server--*':
        - master-server

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

    'api-dummy--*':
        - elife.php7
        - elife.nginx
        - elife.nginx-php7
        - api-dummy
        - api-dummy.nginx

    'journal--*':
        - elife.php7
        - elife.nginx
        - elife.nginx-php7
        - elife.nginx-error-pages
        - elife.nodejs6
        - elife.redis-server
        - journal.curl-7-36
        - journal
