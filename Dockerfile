# docker/Dockerfile
FROM python:3.8-slim

RUN apt-get update && apt-get install -y \
    sshpass \
    && pip install --no-cache-dir ansible ansible-lint

WORKDIR /ansible
COPY . .

ENTRYPOINT ["ansible-playbook"]
