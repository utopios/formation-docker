FROM python:3.8-slim

WORKDIR /app

COPY producer.py requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "producer.py"]
