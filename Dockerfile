FROM ubuntu:14.04

RUN apt-get install -y curl


WORKDIR /root/build-dir/

RUN curl -sL https://deb.nodesource.com/setup | sudo bash - && \
  apt-get install -y nodejs git 
  
RUN npm install -g gulp bower grunt 
  
CMD sh -c "bower --allow-root install; npm install; gulp build; gulp wiredep"