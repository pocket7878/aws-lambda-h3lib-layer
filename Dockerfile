FROM amazonlinux:2017.03.1.20170812

ENV H3_VERSION=3.7.1
RUN yum install -y tar xz yum-utils make automake gcc gcc-c++ cmake3
RUN curl -L -O https://github.com/uber/h3/archive/v${H3_VERSION}.tar.gz
RUN tar xzf v${H3_VERSION}.tar.gz
RUN mkdir -p /var/task/h3
WORKDIR h3-${H3_VERSION}
RUN cmake3 . -DBUILD_SHARED_LIBS=ON
RUN make -j9
# set workdir back
WORKDIR /var/task
