#---------------------------------------------------------------------------
# Dockefile to build Docker Image of NGINX WebServer with my Web Applicaiton
#
# Copyleft(c) by Denis Astahov
#---------------------------------------------------------------------------

FROM nginx:1.23.3

COPY ./index.html   /usr/share/nginx/html/index.html
COPY ./awslogo.png  /usr/share/nginx/html/awslogo.png
USER nginx

#checkov:skip=CKV_DOCKER_2:No Health Check defined
