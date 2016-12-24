FROM centos

RUN yum install -y socat && yum clean all

USER 1001

CMD socat TCP4-LISTEN:5001,fork EXEC:cat