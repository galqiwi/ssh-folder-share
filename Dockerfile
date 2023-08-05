FROM ubuntu:22.04

RUN apt-get update -y
RUN apt install openssh-server -y
RUN useradd -m galqiwi

RUN echo "Port 4000" >> /etc/ssh/sshd_config
RUN echo "GatewayPorts yes" >> /etc/ssh/sshd_config

CMD service ssh restart && chmod 600 /home/galqiwi/.ssh/authorized_keys && sleep infinity
