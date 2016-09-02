FROM openjdk:8-jdk

RUN apt-get update -y && \
    apt-get install -y maven git

RUN git clone https://github.com/LinDA-tools/RDF2Any.git /app
ENV COMMIT_VERSION addb4f5f4da8104de0aaf76134686ef5ac47a7f1
RUN cd /app && git checkout $COMMIT_VERSION

WORKDIR /app/linda

RUN mvn -U clean install

EXPOSE 8181

COPY ./start.sh /start.sh
CMD ["/bin/sh", "/start.sh"]
