FROM centos:7

RUN yum install -y epel-release
RUN yum upgrade -y
RUN yum install -y \
    gcc \
    gdb \
    libffi-devel \
    openssl \
    openssl-devel \
    python-pip \
    python-devel \
    which \
    git \
    pandoc

RUN debuginfo-install -y python-2.7.5-58.el7.x86_64

RUN pip install --upgrade pip

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

ADD .bashrc /root/.bashrc
RUN source /root/.bashrc

ADD https://github.com/krallin/tini/releases/download/v0.14.0/tini /tini
RUN chmod +x /tini
WORKDIR /
ENTRYPOINT ["/tini", "--"]
CMD ["sleep", "infinity"]
