elife_dashboard:
    name: elife-dashboard

    aws:
        username: elife-dashboard-user
        access_id: aws_access_key_id
        secret_access_key: aws_secret_access_key

    db:
        name: elifemonitoring
        username: dashboard_db_username  # OMG. case sensitive. use all lower
        password: dashboard_db_password
        host: 127.0.0.1
        port: 5432

    basic_auth:
        username: production
        password: basic_http_auth_password

elife_article_scheduler:
    name: elife-article-scheduler

    secret_key: scheduler_application_key

    db:
        name: articlescheduler
        username: articlescheduler
        password: scheduler_db_password 
        host: 127.0.0.1
        port: 5432

    web:
        port: 8080
