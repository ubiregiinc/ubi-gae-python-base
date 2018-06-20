FROM debian
RUN apt update && apt install python wget libmariadbclient-dev python-pip unzip ruby mariadb-client -y
RUN wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.62.zip && unzip google*.zip && rm *.zip
RUN pip install MySQL-python
ENV PATH=$PATH:/google_appengine