#Pull down the necessary image
FROM python:3

#change working directory
WORKDIR /usr/src/app


#copy the souce code to app dir
COPY requirements.txt /usr/src/app

#Install dependecies
RUN pip3 install -r requirements.txt

COPY app.py /usr/src/app

#Expose port in which our dev web server listen to in our application its 5000
EXPOSE 5000

#Process to run when image is used to crate a container
CMD ["python","app.py"]

