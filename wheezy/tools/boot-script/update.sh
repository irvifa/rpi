#!/bin/bash

update-rc.d -f triggerhappy remove
update-rc.d -f plymouth remove
update-rc.d -f X11-common remove
update-rc.d -f lightdm remove
update-rc.d -f rng-tools remove
