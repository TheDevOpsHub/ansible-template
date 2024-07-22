# docker/Dockerfile
FROM python:3.8-slim

RUN apt-get update && apt-get install -y \
    sshpass \
    && pip install --no-cache-dir ansible ansible-lint

WORKDIR /ansible

# Copy the requirements file
COPY requirements.yml /tmp/requirements.yml

# Install Ansible roles and collections
RUN ansible-galaxy install -r /tmp/requirements.yml

COPY . .

ENTRYPOINT ["ansible-playbook"]
