journal:
    api_url: http://prod--api-dummy.thedailybugle.internal
    api_url_public: https://prod--api-dummy.thedailybugle.org
    api_key: a_authentication_key
    side_by_side_view_url: null
    default_host: dailybugle.org
    observer_url: http://prod--observer.elifesciences.org
    session_name: journal
    secret: random_string
    web_users: {}
    gtm_id: null
    disqus_domain: null
    status_checks:
        API dummy: ping

    mailer:
        # available only in some US regions
        host: email-smtp.us-east-1.amazonaws.com
        port: 587  # an *unthrottled* SES port. avoid port 25
        username: fake
        password: fake
        encryption: tls

elife:
    redis:
        maxmemory: 512
~
