FROM ubuntu:latest
WORKDIR /opt
RUN apt-get update && apt-get install -y nginx
COPY myindex.html .
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.97/bin/apache-tomcat-9.0.97.tar.gz.asc .
CMD ["nginx", "-g", "daemon off;"]



