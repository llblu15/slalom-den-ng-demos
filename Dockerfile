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
WORKDIR /data

ADD Gruntfile.js /

# Define default command.
CMD ["bash"]
RUN pwd
RUN grunt
