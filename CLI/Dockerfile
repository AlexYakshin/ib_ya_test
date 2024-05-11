FROM python:3.11
COPY requirements.txt .
RUN pip install -r requirements.txt && \
    apt-get update && apt-get install iputils-ping -y
CMD mkdir /app
WORKDIR /app
ADD test_hw4_yakshin.py .
ENTRYPOINT ["python", "test_hw4_yakshin.py"]
