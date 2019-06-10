#publicly available docker image "python" on docker hub will be pulled
FROM python:latest
MAINTAINER atheeshrathnaweera

RUN mkdir -p /code

WORKDIR /code

#copy the contents in script.py file to the file name dockerscript.py 
COPY script.py /dockerscript.py 

#set a environment
ENV PYTHONUNBUFFERED="0"

CMD python /dockerscript.py

