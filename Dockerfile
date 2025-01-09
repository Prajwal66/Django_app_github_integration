FROM python:3
RUN pip3 install django==5.1.4

COPY . . 

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8001"]

