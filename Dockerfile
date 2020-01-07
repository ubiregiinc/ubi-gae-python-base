FROM debian
RUN apt update && apt install python wget libmariadbclient-dev python-pip unzip ruby mariadb-client -y
RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-245.0.0-linux-x86_64.tar.gz && tar -xzf google*.tar.gz && rm *.gz
RUN pip install mysqlclient
ENV PATH=$PATH:/google-cloud-sdk/bin
RUN gcloud components install app-engine-python
