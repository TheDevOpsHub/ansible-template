# Ansible Template Repository

This repository serves as a template for Ansible projects, including features for CI, linting, and containerization.

## Structure

- **.github/workflows/**: CI workflows for GitHub Actions
- **group_vars/**: Group variables
- **host_vars/**: Host variables
- **roles/**: Ansible roles
- **inventories/**: Inventory files
- **Dockerfile**: Dockerfile for containerizing Ansible
- **tests/**: Test playbooks
- **ansible.cfg**: Ansible configuration
- **requirements.yml**: Ansible Galaxy requirements

## Getting Started

1. **Clone the repository**:

   ```sh
   git clone https://github.com/TheDevOpsHub/ansible-template.git
   cd ansible-template
   ```

2. **Build Docker image**:

   ```sh
   docker build -t ansible-playbook -f Dockerfile .
   ```

3. **Run Ansible Playbook**:
   ```sh
   docker run --rm ansible-playbook tests/test_playbook.yml
   ```

## Continuous Integration

GitHub Actions are configured to lint and test your Ansible playbooks on each push or pull request.

## Linting

Ansible Lint is used to ensure best practices in your Ansible playbooks. The linting is automatically run in the CI pipeline.

## Containerization

A Dockerfile is included to containerize Ansible, ensuring consistency across environments.
