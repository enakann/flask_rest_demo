FROM python:3-alpine
WORKDIR /usr/src/app
COPY . .
RUN python -m pip install -r requirements.txt
#RUN pip install flask
CMD ["python","app.py"]
