# builder-private-example

The `builder` project requires *some* configuration that must be kept 
confidential. This repository demonstrates the structure of the expected 
repository with lots of comments.

This repository should contain:

* Salt pillar data for all your projects
* Salt state `top.sls` file
* Salt Master `/etc/salt/master` configuration

## pillar data

All project credentials and configuration.

The structure of `pillar/elife.sls` must match that of `pillar/elife.sls` in 
`builder-base-formula`.

The structure of individual project pillar files must match that of the 
`salt/example.pillar` file in those files.

## state `top.sls`

This file is essentially eLife's own (safe) version of a project's 
`salt/example.top` file. 

If a project has this in the `example.top` file:

    base:
        '*':
            - pname
            - pname.foo

Then the `top.sls` file should have:

    base:
        'pname--*':
            - pname
            - pname.foo

If I could trust every project sent to the master for building to not secretly
include states of other, private/disallowed/whatever, projects, then this file 
has the potential to be obviated.

For now, this works, but I'm open to suggestions for improvement.

## Salt Master config file

This can be found in `./etc-salt-master` with suggestion configuration for the
Salt Master. The file is heavily commented.

# Copyright & Licence

Copyright 2016 eLife Sciences. Licensed under the [GPLv3](LICENCE.txt)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

