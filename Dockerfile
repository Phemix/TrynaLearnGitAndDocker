FROM python

ADD ./loggingApp.py /


CMD [ "python", "./loggingApp.py" ]
