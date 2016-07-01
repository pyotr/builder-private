# PILLAR top.sls

base:
    # ALL minions have access to the elife formula pillar data
    # this project is mounted in the gitfs remotes by default
    # see `./etc-salt-master`
    '*':
        - elife

    # only minions identifying themselves as project1--something
    'project1--*':
        - project1

    'project2--*':
        - project2

    # for some reason project3 minions need access to project1 pillar data
    'project3--*':
        - project1
        - project3
