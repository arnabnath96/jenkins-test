FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
COPY app.py /usr/src/app
RUN pip3 install -r requirements.txt
CMD [ "gunicorn", "app:app"  ]
