FROM python:3.8-slim

WORKDIR /app

COPY consumer.py requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 5001

CMD ["python", "consumer.py"]
