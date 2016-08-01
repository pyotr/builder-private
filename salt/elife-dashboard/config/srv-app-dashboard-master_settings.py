{% set app = pillar.elife_dashboard %}

preview_base_url = "drupal_site_base_url"

# RDS settings
rds_region = 'us-east-1'

# SQS settings
sqs_region = 'us-east-1'
event_monitor_queue = 'event-property-incoming-queue'
workflow_starter_queue = 'workflow-starter-queue'
event_queue_pool_size = 5
event_queue_message_count = 5

# Logging
log_level = "WARN"
log_file = "/var/log/app.log"
process_queue_log_file = "/var/log/process-queue.log"

# Database
database = "{{ app.db.name }}"
host = "{{ salt['elife.cfg']('cfn.outputs.RDSHost') or app.db.host }}"
port = "{{ salt['elife.cfg']('cfn.outputs.RDSPort') or app.db.port }}"
user = "{{ app.db.username }}"
password = "{{ app.db.password }}"

# Article scheduler settings
article_scheduler_url = 'http://localhost:8080/schedule/v1/article_scheduled_status/'
article_schedule_publication_url = 'http://localhost:8080/schedule/v1/schedule_article_publication/'
article_schedule_range_url = 'http://localhost:8080/schedule/v1/article_schedule_for_range/from/<from>/to/<to>/'
