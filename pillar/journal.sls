journal:
    # an internal URL - on the internal DNS hosted zone - for the api-gateway or api-dummy project
    api_url: http://baseline--api-dummy.bjce.internal

    # a public URL - on the public DNS hosted zone - for the api-gateway or api-dummy project
    api_url_public: https://baseline--api-dummy.bjce.ru

    # will be used as Authorization header to access the API
    # only need to specify this if you want to access unpublished content from this Journal instance - corner case
    api_key: a_authentication_key

    # URL of a Lens instance - leave blank for no side-by-side view
    side_by_side_view_url: null

    # default hostname for this journal instance 
    default_host: bjce.ru

    # URL for observer instance - to produce RSS feeds
    observer_url: http://prod--observer.bjce.ru

    # name of the cookie sent by this journal instance for session tracking
    session_name: journal

    # used internally for features such as CSRF protection, should be unique per installation
    secret: random_string

    # can be used to protect with Basic auth this instance
    web_users: {}

    # Google Tag Manager configuration
    gtm_id: null

    # Disqus configuration
    disqus_domain: null

    # backends to be checked by /status URL
    status_checks:
        API dummy: ping

    # mail server configuration for forms sending emails
    mailer:
        # available only in some US regions
        host: email-smtp.us-east-1.amazonaws.com
        port: 587  # an *unthrottled* SES port. avoid port 25
        username: fake
        password: fake
        encryption: tls

elife:
    redis:
        # tweaking of the local Redis daemon used for caching
        maxmemory: 512
