#publicly available docker image "python" on docker hub will be pulled
FROM python:latest
MAINTAINER atheeshrathnaweera

RUN mkdir -p /code

#setting the working directory of the container
WORKDIR /code 

#copy the contents in script.py file to the file name dockerscript.py 
COPY script.py /dockerscript.py 

#set a environment variables in the container
ENV PYTHONUNBUFFERED="0"

#CMD use for execute a command at run time when the container is executed
CMD python /dockerscript.py

#commands for build and run the application
#           build ------------- "docker build -t <preferred_image_name>"
#           run --------------- "docker run -it <preferred_image_name>"
