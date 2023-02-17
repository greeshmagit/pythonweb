//FROM python:3.8-slim-buster
FROM python:alpine3.10 
WORKDIR /app
COPY python_web.py .
COPY requirements.txt .

RUN pip install --upgrade pip --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python3", "python_web.py"]
