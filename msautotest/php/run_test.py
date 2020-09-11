#!/usr/bin/env python3

import sys
import subprocess

retcode = subprocess.call(['phpunit','.'])

sys.exit(retcode)
