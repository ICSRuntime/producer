FROM builder-base:latest

ADD target/Producer-jar-with-dependencies.jar /service.jar

HEALTHCHECK CMD curl --fail http://localhost:4567/ping || exit 1

CMD [ "/run.sh" ]