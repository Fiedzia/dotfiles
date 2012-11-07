#!/usr/bin/env python

import os
import sys

BASEDIR = os.path.dirname(os.path.realpath(__file__))
for fname in ('.vimrc', '.vim'):
    full_name = os.path.join(os.path.expanduser('~/'), fname)
    print 'Processing {0}'.format(full_name)
    if os.path.exists(full_name):
        print 'renaming {0} to {1}'.format(full_name, full_name+'_old')
        os.rename(full_name, full_name+'_old')
    print  os.path.join(BASEDIR, fname), 'fname', full_name
    os.symlink(os.path.join(BASEDIR, fname), full_name)

