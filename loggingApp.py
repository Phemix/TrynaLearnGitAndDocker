
import logging
import sys
import datetime
import time
ts = time.time()

import datetime
st = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')

while 1:
	sys.stderr.write(st);
	sys.stderr.write(' --->');
	sys.stderr.write('Testing\n');
	time.sleep(5)
