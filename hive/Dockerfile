FROM hadoop-spark-base

ARG HIVE_VERSION=3.1.3
ARG HIVE_URL=https://archive.apache.org/dist/hive/hive-$HIVE_VERSION/apache-hive-$HIVE_VERSION-bin.tar.gz
ENV HIVE_HOME=/opt/hive

ARG USERNAME=jupyter
ARG GROUPNAME=jupyter
ARG UID=1001
ARG GID=1001

RUN set -x \
 && wget -q https://archive.apache.org/dist/hive/KEYS -O /tmp/hive-KEYS  \
 && gpg --import /tmp/hive-KEYS \
 && sudo mkdir $HIVE_HOME \
 && sudo chown $USERNAME:$GROUPNAME -R $HIVE_HOME \
 && wget -q $HIVE_URL -O /tmp/hive.tar.gz \
 && wget -q $HIVE_URL.asc -O /tmp/hive.tar.gz.asc \
 && gpg --verify /tmp/hive.tar.gz.asc \
 && tar -xf /tmp/hive.tar.gz -C $HIVE_HOME --strip-components 1 \
 && rm /tmp/hive* 

ENV HIVE_CONF_DIR=$HIVE_HOME/conf
ENV PATH=$HIVE_HOME/sbin:$HIVE_HOME/bin:$PATH

COPY run.sh /usr/local/sbin/run.sh
RUN sudo chmod a+x /usr/local/sbin/run.sh
CMD ["run.sh"]