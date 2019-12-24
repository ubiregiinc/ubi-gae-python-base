FROM debian
RUN apt update && apt install python wget libmariadbclient-dev python-pip unzip curl ruby mariadb-client -y
RUN curl https://sdk.cloud.google.com | bash
RUN pip install mysqlclient
ENV PATH=$PATH:/root/google-cloud-sdk/bin/