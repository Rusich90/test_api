FROM python:3.10.7-slim-buster

COPY ./requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . /code

WORKDIR /code

CMD python manage.py runserver 0.0.0.0:8000