#!/bin/bash

# Use "sudo", if sudo does not work use "sudo su"

free -m && sync && echo 3 > /proc/sys/vm/drop_caches && free -m

