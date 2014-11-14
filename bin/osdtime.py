#!/usr/bin/env python2
#display time using osd

import sys

from datetime import datetime

import pyosd

osd = pyosd.osd(font='-*-*-medium-r-normal-*-*-360-*-*-p-*-*-*')
osd.set_timeout(4)
if '-t' in sys.argv:
    text = sys.argv[-1]
else:
    text = datetime.now().strftime('%H:%M')
osd.set_align(pyosd.ALIGN_CENTER)
osd.set_pos(pyosd.POS_MID)
osd.set_outline_offset(2)
osd.set_outline_colour('black')
osd.display(text)
osd.wait_until_no_display()
