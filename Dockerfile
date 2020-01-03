FROM python:3-alpine
WORKDIR /usr/src/app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . .
CMD ["python","app.py"]
