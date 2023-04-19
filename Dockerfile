FROM python:3.11.3-bullseye
COPY files/systemctl3.py /usr/bin/systemctl
RUN test -L /bin/systemctl || ln -sf /usr/bin/systemctl
RUN mkdir -p /var/run/sshd
RUN apt-get update && apt-get -y install sudo openssh-server
CMD ["python3"]
