//FROM python:3.8-slim-buster
FROM python:alpine3.9
WORKDIR /app
COPY python_web.py .
COPY requirements.txt .

RUN pip3 install --upgrade pip --no-cache-dir -r requirements.txt
RUN  sudo yum install curl -y

CMD ["python3", "python_web.py"]
