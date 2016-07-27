"""
    Settings for eLife
    ~~~~~~~~~~~
    To specify multiple environments, each environment gets its own class,
    and calling get_settings will return the specified class that contains
    the settings.

    You must modify:
        aws_access_key_id
        aws_secret_access_key

"""

class dev():
    # AWS settings
    aws_access_key_id = "aws key"
    aws_secret_access_key = "aws secret"

    workflow_context_path = 'workflow-context/'

    # SQS settings
    sqs_region = 'us-east-1'
    S3_monitor_queue = 'exp-incoming-queue'
    event_monitor_queue = 'exp-event-property-incoming-queue'
    workflow_starter_queue = 'exp-workflow-starter-queue'
    website_ingest_queue = 'exp-website-ingest-queue'
    workflow_starter_queue_pool_size = 5
    workflow_starter_queue_message_count = 5

    # S3 settings
    storage_provider = 's3'
    publishing_buckets_prefix = 'exp-'
    # shouldn't need this but uploads seem to fail without. Should correspond with the s3 region
    # hostname list here http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region

    s3_hostname = 's3.amazonaws.com'
    production_bucket = 'elife-production-final'
    eif_bucket = 'elife-publishing-eif'
    expanded_bucket = 'elife-publishing-expanded'
    ppp_cdn_bucket = 'elife-publishing-cdn'
    archive_bucket = 'elife-publishing-archive'
    xml_bucket = 'elife-publishing-xml'

    # REST endpoint for drupal node builder
    # drupal_naf_endpoint = 'http://localhost:5000/nodes'
    drupal_EIF_endpoint = ''
    drupal_approve_endpoint = ''
    drupal_update_user = ''
    drupal_update_pass = ''

    # lax endpoint to retrieve information about published versions of articles
    lax_article_versions = "version endpoint"
    lax_update = "update endpoint"
    lax_update_user = "test_user"
    lax_update_pass = "test_pass"
    verify_ssl = False

    no_download_extensions = 'tif'

    # end JR settings

    # S3 settings
    bucket = 'elife-articles-dev' # TODO - varies on env
    prefix = ''
    delimiter = '/'

    # SWF queue settings
    domain = "Publish.dev"
    default_task_list = "DefaultTaskList"

    # SimpleDB settings
    simpledb_region = "us-east-1"
    simpledb_domain_postfix = "_dev"

    # SES settings
    # email needs to be verified by AWS
    ses_region = "us-east-1"
    ses_sender_email = "test@email.com"
    ses_admin_email = "admin@email.com"

    # CDN bucket settings
    cdn_bucket = 'elife-cdn-dev'
    cdn_distribution_id = ""
    cdn_domain_name = ""

    # Lens bucket settings
    lens_bucket = 'elife-lens-dev'
    lens_distribution_id = ""
    lens_domain_name = ""

    # Lens jpg bucket
    lens_jpg_bucket = "exp-elife-production-lens-jpg"

    # Bot S3 settings
    bot_bucket = 'elife-bot-dev'

    # POA delivery bucket
    poa_bucket = 'elife-ejp-poa-delivery-dev'

    # POA packaging bucket
    poa_packaging_bucket = 'elife-poa-packaging-dev'

    # POA email settings
    ses_poa_sender_email = "gnott@starglobal.ca"
    ses_poa_recipient_email = "gnott@starglobal.ca"

    # PMC email settings
    ses_pmc_sender_email = "gnott@starglobal.ca"
    ses_pmc_recipient_email = "gnott@starglobal.ca"

    # EJP S3 settings
    ejp_bucket = 'elife-ejp-ftp-dev'

    # Crossref
    crossref_url = ""
    crossref_login_id = ""
    crossref_login_passwd = ""

    # PubMed FTP settings
    PUBMED_FTP_URI = ""
    PUBMED_FTP_USERNAME = ""
    PUBMED_FTP_PASSWORD = ""
    PUBMED_FTP_CWD = ""

    # PMC FTP settings
    PMC_FTP_URI = ""
    PMC_FTP_USERNAME = ""
    PMC_FTP_PASSWORD = ""
    PMC_FTP_CWD = ""

    # HEFCE Archive FTP settings
    HEFCE_FTP_URI = ""
    HEFCE_FTP_USERNAME = ""
    HEFCE_FTP_PASSWORD = ""
    HEFCE_FTP_CWD = ""

    # HEFCE Archive SFTP settings
    HEFCE_SFTP_URI = ""
    HEFCE_SFTP_USERNAME = ""
    HEFCE_SFTP_PASSWORD = ""
    HEFCE_SFTP_CWD = ""

    # Cengage Archive FTP settings
    CENGAGE_FTP_URI = ""
    CENGAGE_FTP_USERNAME = ""
    CENGAGE_FTP_PASSWORD = ""
    CENGAGE_FTP_CWD = ""

    # GoOA FTP settings
    GOOA_FTP_URI = ""
    GOOA_FTP_USERNAME = ""
    GOOA_FTP_PASSWORD = ""
    GOOA_FTP_CWD = ""

    # Scopus FTP settings
    SCOPUS_FTP_URI = ""
    SCOPUS_FTP_USERNAME = ""
    SCOPUS_FTP_PASSWORD = ""
    SCOPUS_FTP_CWD = ""

    # Web of Science WoS FTP settings
    WOS_FTP_URI = ""
    WOS_FTP_USERNAME = ""
    WOS_FTP_PASSWORD = ""
    WOS_FTP_CWD = ""

    # Templates S3 settings
    templates_bucket = 'elife-bot-dev'

    # Logging
    setLevel = "INFO"

    # Session
    session_class = "RedisSession"

    # Redis
    redis_host = "127.0.0.1"
    redis_port = 6379
    redis_db = 0
    redis_expire_key = 86400

class prod(dev):
    pass

def get_settings(ENV = "dev"):
    """
    Return the settings class based on the environment type provided,
    by default use the dev environment settings
    """
    return eval(ENV)
