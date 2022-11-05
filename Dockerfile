FROM python

#create src folder and copy all django projects into it
WORKDIR /src
COPY . .
COPY requirements.txt .

#run install required python packages 
RUN pip install -r requirements.txt

EXPOSE 8080

#Run Django server on port 8080
CMD ["python", "django-proj1/mysite/manage.py", "runserver", "0.0.0.0:8080"]


#docker image build -t milgurung/django:v1 .
#docker run -it -p 8080:8080 milgurung/django:v1
#Maps host 8080 to container 8080