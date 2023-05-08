
FROM python:3.11.3-slim-buster

WORKDIR /app

COPY app.py .
COPY requirements.txt .
COPY model.pkl .

RUN pip install -r requirements.txt

EXPOSE 80

ENTRYPOINT ["python"]

CMD ["app.py"]