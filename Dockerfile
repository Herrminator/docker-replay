# Run docker-replay inside Docker
#
# Example:
# docker build -t replay .
# docker run -v /var/run/docker.sock:/var/run/docker.sock replay -p nginx

FROM python:3-alpine

WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache . &&\
    rm -rf /usr/src/app

ENTRYPOINT ["docker-replay"]
