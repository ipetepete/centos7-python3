# Centos7 + Python 3
----

## Included:
* Software collections
   - rh-python35
* uwsgi
* supervisor

__NOTE: Python3 is not enabled by default. Here are the options for enabling it and it's tool-set:__

To enable python3 by default build this with the two lines uncommented in the Dockerfile

    #echo "#!/bin/bash
    #source scl_source enable rh-python35" > /etc/profile.d/enablepython35.sh

To use it in a new shell session (it creates a new session, exiting the session effectively disables it):

    scl enable rh-python35 bash

To enable it without starting a new session (logging out is the only way to disable it using this method):

    source scl_source enable rh-python35
