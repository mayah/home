#!/usr/bin/env python3

# How to use:
#   kgb_report.py <type> <content>
#   For exmaple:
#     kgb_report.py commands hoge

import subprocess
import json
import os
import sys
import time

if "HOME" in os.environ:
    HOME = os.environ["HOME"]
elif os.path.exists('/home/shinyak'):
    HOME = '/home/shinyak'
elif os.path.exists('/home/mayah'):
    HOME = '/home/mayah'
elif os.path.exists('/Users/mayah'):
    HOME = '/Users/mayah'
else:
    HOME = '/Users/shinyak'
    
SHORTHOST = subprocess.getoutput('hostname -s')

class KGBReport:
    def __init__(self):
        pass

    def add(self, filename, obj):
        # Ensures the written directory exists.
        dirname = os.path.dirname(filename)
        if not os.path.exists(dirname):
            os.makedirs(dirname)

        # Opens the log file.
        if os.path.isfile(filename):
            f = open(filename, 'a')
        else:
            f = open(filename, 'w')

        # Writes object.
        f.write(json.dumps(obj) + '\n')
        f.close()

    def report(self):
        type = sys.argv[1]
        content = sys.argv[2]
        host = SHORTHOST
        now = time.time()
        date = time.strftime('%Y%m%d')

        obj = {
            'host': host,
            'type': type,
            'ctnt': content,
            'time': now
        }

        filename = HOME + '/.kgb/log/' + date
        self.add(filename, obj)

if __name__ == "__main__":
    KGBReport().report()
