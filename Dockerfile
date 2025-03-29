### example of Dockerfile####

FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN rm /var/www/html/*
WORKDIR /var/www/html/
RUN echo "<H1> Hi from amit </H1>" > index.html
EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"


### second example of Dockerfile####

FROM fawaz
RUN rm /var/www/html/*
COPY index.html /var/www/html/
