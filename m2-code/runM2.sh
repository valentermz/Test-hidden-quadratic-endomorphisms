#!/usr/bin/env bash

# This is an auxiliary shell script to run Macaulay2 from the main script 'test-all-values.py'

# This script should be unnecessary but I couldn't get the module 'subprocess' to play well wiht M2

# Note that this file lives inside m2-code/ but it's called from it parent directory


$(M2 < "./m2-code/test-run.m2" > "./m2-code/output.m2")
