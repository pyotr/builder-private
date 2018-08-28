# global defaults for the 'elife' saltstack formula
# this is the EXAMPLE PRODUCTION file.

elife:
    # deprecated, use pillar.env
    dev: False

    # can be overriden per-project by pillar files
    env: baseline
    # the domain under which all hostnames will be created
    domain: bjce.ru

    deploy_user:
        username: elife
        email: for@pyotr.pro
        aws_access: null
        aws_secret: null
        aws_region: us-east-1
        github_token: null

    projects_builder:
        # a salt:// path to a key in this repository that can be used to checkout projects
        key: salt://elife/config/projects-builder-pem
        github_token: null

    bootstrap_user:
        username: ubuntu # vagrant in dev

    ssh_users:
        # username: pubkey
        # (this really is an example public key - no one actually owns it)
        example-user: AAAAB3NzaC1yc2EAAAADAQABAAABAQCi0rsrz3X3+oyp85EG+QOhDEAyhykndH5Zyn91pJevvGeJQSxAWjjKVFywCjHJIyZdgq20eiuTPS0nwWTWeUXndCT9K3p7I5emqcnCpd/rboyLPrsvh8y1Gg0FOB7deY8A554yzCT76WjBqiLShv2xSX5sfvgW7hmg+/oVRql55ua13bnEFvwf0pzPDKkY2cUxqlI16Eco8uI+JvVX5y5xPQUgFATh0enwZ0YBjMsFCe+CIHV5RMGHgKypOnva2UzFdwSl6lP1GHvDlHSMoSYgvNUrUv5AEgKD5zbeQoIALI7z5iyyE+xAOUq9I67PeR5faoU+QzrKqr7HsJ5Vinzp

    # grants known users remote access to project systems
    ssh_access:
        # ssh access is granted to the vagrant/ubuntu (bootstrap user) as well as
        # the deploy user (elife).
        also_bootstrap_user: True
        # adds keys to deploy user's `~/.ssh/authorized_keys` file
        allowed:
            project1:
                - example-user

        # removes keys. happens after allowing keys
        denied: {}
            #project1:
            #    - example-user

    known_hosts: {}
    
    coveralls:
        tokens: {}
    
    daily_system_updates:
        enabled: True
        
    backups:
        # AWS credentials for uploading backups to S3
        s3_access: null
        s3_secret: null

    webserver:
        username: www-data

    nginx:
        certificate_folder: /etc/certificates

    web_users:
        '':
            # the default 'open secret' .htaccess user/pass
            # useful for hiding from robots and randoms
            username: username
            password: password

        crazy-:
            # the 'crazy' .htaccess file with a random user+pass
            # useful for hiding stuff, even from yourselves
            username: crazy_username
            password: crazy_password 

    # values that both mysql and psql use
    db_root:
        username: root
        password: root

    redis:
        host: 127.0.0.1
        port: 6379
        persistent: false
        maxmemory: 256

    logging:
        # loggly destination for syslog-ng logs
        # https://www.loggly.com/
        loggly:
            enabled: False
            host: "logs-01.loggly.com"
            port: 514
            token: null

    newrelic:
        enabled: False

    # postfix using AWS SES as a backend
    postfix_ses_mail:
        smtp: email-smtp.us-east-1.amazonaws.com # change region to suit
        port: 587  # an *unthrottled* SES port. avoid port 25
        from: null # SES verified 'from' address
        user: null # SES-created IAM username
        pass: null # SES-created IAM password

    external_volume:
        device: /dev/xvdh
        filesystem: ext4
        directory: /ext

    php:
        upload_max_filesize: 2M
        post_max_size: 8M

