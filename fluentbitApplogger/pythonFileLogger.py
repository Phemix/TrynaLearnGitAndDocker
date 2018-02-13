import logging
import time

ts = time.time()

import datetime
st = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')

logging.basicConfig(filename='py_app.log',level=logging.DEBUG)
while 1:

	logging.info(st + '----------->: ' + "This is a log at info level" )
	time.sleep(5)



