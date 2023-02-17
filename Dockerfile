FROM python:3.8-slim-buster

WORKDIR /app
COPY python_web.py .

RUN pip install --upgrade pip --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "python_web.py"]
