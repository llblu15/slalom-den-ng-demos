#
# Node.js w/ Bower & Grunt Dockerfile
#
# https://github.com/dockerfile/nodejs-bower-grunt
#

# Pull base image.
FROM dockerfile/nodejs

# Install Bower & Grunt
RUN npm install -g bower grunt-cli

# Define working directory.
WORKDIR /Users/marcs/WebstormProjects/slalom-demo-angularv


# Define default command.
CMD ["bash"]

RUN git init

RUN git pull https://llblu15@github.com/llblu15/slalom-den-ng-demos.git

RUN npm install && bower install

RUN grunt
