FROM python:3.8.2-slim

RUN mkdir -p static templates

COPY app.py .
COPY static/logo.png static/.
COPY templates/index3.html templates/.
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD python app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error --server.fileWatcherType=none
