# Dockerfile
FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl bash && \
    apt-get clean

COPY test_script.sh /test_script.sh
RUN chmod +x /test_script.sh

CMD ["/test_script.sh"]