
FROM python:3.10-slim-bullseye

WORKDIR /app

COPY appKonrad.py .
COPY requirements.txt .
COPY model.pkl .
COPY code.py .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["appKonrad.py"]