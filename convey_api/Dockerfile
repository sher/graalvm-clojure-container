FROM clojure:openjdk-11-tools-deps AS BASE
RUN apt-get update
RUN apt-get install -yy curl build-essential zlib1g-dev
RUN cd /opt && curl -sL https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-19.3.0/graalvm-ce-java11-linux-amd64-19.3.0.tar.gz \
    | tar -xzvf -
ENV PATH="/opt/graalvm-ce-java11-19.3.0/bin:${PATH}"
RUN gu install native-image
RUN clojure -e "(clojure-version)"

WORKDIR /app
ADD deps.edn .
ADD src src
RUN clojure -A:native-image
EXPOSE 8080
CMD ["/app/convey-api.core", "-XX:+PrintGC", "-XX:+PrintGCTimeStamps", "-XX:+VerboseGC", "+XX:+PrintHeapShape", "-Xmx256m"]