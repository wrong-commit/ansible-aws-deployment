# Description

A sample configuration IaC repository that builds an AWS EC2 AMI 
using Ansible. Dummy application name is Pikachu. 

# Playbooks     

All playbooks used for deploying the application are listed in the `playbooks/` directory.  
1. `main_create_security_group.yml` creates a Security Group using a custom role 


# CI/CD Pipeline
GitHub Actions are chosen for running IaC code.  
TODO: Example triggering workflows from REST API  

Secrets that need to be added to each GitHub Action Environment are as follows: 
- `ANSIBLE_USER`. User that Ansible logs in as. 

