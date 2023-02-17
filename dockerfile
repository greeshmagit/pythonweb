FROM python:3.10-slim-buster

WORKDIR /app
COPY python_web.py .

EXPOSE 8000

CMD ["python", "server.py"]
