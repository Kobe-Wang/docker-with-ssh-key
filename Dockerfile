FROM golang:1.8

ARG SSH_KEY
RUN mkdir -p /root/.ssh
RUN echo "$SSH_KEY" > /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

# Do git clone private repo

# Remove sensitive ssh private key
RUN rm /root/.ssh/id_rsa

COPY . ./
