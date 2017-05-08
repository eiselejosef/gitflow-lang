FROM java:8

ADD /target/*-jar-with-dependencies.jar /

ENV SENTRY_DSN=http://18d362cdf0114ea989dfa34464ddc4ef:747deda9bf6b47d4a169946dca633220@sentry:9000/4
ENV LOG_LEVEL=info

ENV JAVA_OPTS="-Xmx1536m -Xms256m"

ENTRYPOINT java -jar $JAVA_OPTS lang-detect-1.1.0-SNAPSHOT-jar-with-dependencies.jar
