FROM debian:bullseye
RUN apt update && apt install python python2 wget libmariadb-dev python3-pip unzip ruby mariadb-client -y && apt-get install apt-transport-https ca-certificates gnupg -y
RUN apt install curl -y 
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && apt-get install google-cloud-sdk google-cloud-sdk-app-engine-python git google-cloud-sdk-app-engine-python-extras google-cloud-sdk-app-engine-python google-cloud-sdk-app-engine-python-extras google-cloud-sdk-datastore-emulator -y
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && python2 get-pip.py && rm get-pip.py
RUN apt install python2-dev -y
RUN python2 -m pip install mysqlclient
ENV CLOUDSDK_PYTHON /usr/bin/python2
