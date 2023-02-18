//FROM python:3.8-slim-buster
FROM python:alpine3.9
//ENV app /usr/bin/src/webapp/pythonweb
WORKDIR /app
COPY python_web.py .
COPY requirements.txt .
ENV PYTHONBUFFERED=1
RUN pip3 install --upgrade pip --no-cache-dir -r requirements.txt
CMD ["python3", "python_web.py"]
