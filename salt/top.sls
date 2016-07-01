# SALT top.sls

base:
    # ALL minions use the elife base state
    '*':
        - elife

    # project1 has no other dependencies besides the base state and itself
    'project1--*':
        - project1

    # project2 requires a db, webserver and mailserver
    'project2--*':
        - elife.nginx
        - elife.postgresql
        - elife.postfix
        - project2

    # project3 looks like a js app
    'project3--*':
        - elife.galen
        - elife.nodejs
        - project3

    # project4 a php app
    'project4--*':
        - elife.php7
        - elife.mysql
        - project4
        - project4.foo
        
    # etc
