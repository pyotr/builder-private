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

    'journal--*':
        - elife
        - elife.php7
        - elife.nginx
        - elife.nginx-php7
        - journal
