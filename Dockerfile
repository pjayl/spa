FROM python:3.9

# ENV DB_USER
# ENV DB_PASSWORD
# ENV DB_HOST
# ENV DB_PORT
# ENV DB_NAME

COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp

COPY . /app
WORKDIR /app

CMD python ./app.py
