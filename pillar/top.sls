# PILLAR top.sls

base:
    # ALL minions have access to the elife formula pillar data
    # this project is mounted in the gitfs remotes by default
    # see `./etc-salt-master`
    '*':
        - elife

    'lax--*':
        - lax
