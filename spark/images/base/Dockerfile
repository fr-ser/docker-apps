FROM openjdk:8u212-b04-jdk-stretch

ENV DAEMON_RUN=true
ENV SPARK_VERSION=2.4.4
ENV HADOOP_VERSION=2.7
ENV SPARK_HOME=/spark


RUN apt-get -y update && \
    apt-get install --no-install-recommends -y \
    curl vim wget software-properties-common ssh net-tools ca-certificates jq && \
    rm -rf /var/lib/apt/lists/*

# Add Dependencies for PySpark
RUN apt-get -y update && \
    apt-get install -y python3 python3-pip python3-numpy python3-matplotlib python3-scipy python3-pandas python3-simpy && \
    rm -rf /var/lib/apt/lists/*


RUN wget --no-verbose http://mirrors.ukfast.co.uk/sites/ftp.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && \
    mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark && \
    rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
