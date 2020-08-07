FROM python:3.6-alpine AS python-build-env
WORKDIR /app
ADD requirements.txt /app
RUN cd /app && pip install -r requirements.txt
FROM python:3.6-alpine
WORKDIR /app
ADD . /app
COPY --from=python-build-env /root/.cache /root/.cache
RUN cd /app && pip install -r requirements.txt && rm -rf /root/.cache
CMD ["gunicorn", "app:app"]
