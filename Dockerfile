FROM amazonlinux
RUN yum install -y python3 && \
    yum install -y python3-pip && \
    yum install -y zip && \
    yum clean all
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install virtualenv

RUN python3 -m venv kubernetes
RUN source kubernetes/bin/activate && pip install kubernetes -t ./python && deactivate
RUN zip -r python.zip ./python/
