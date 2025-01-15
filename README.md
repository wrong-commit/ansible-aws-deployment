# Description
A sample configuration IaC repository that builds an AWS EC2 AMI   
using Ansible. Dummy application name is Pikachu

# Playbooks     
All playbooks used for deploying the application are listed in the `playbooks/` directory.  
1. `main_build_latest_ami.yml` Generate a new build server for the latest AMI

# CI/CD Pipeline
GitHub Actions are chosen for running IaC code. The program `act` can be installed from   
https://github.com/nektos/act to run `act.sh`. Setup a .env file with all secrets listed below
 
Environment variables that need to be added to each GitHub Action Environment are:  
- `APP_GIT_REPO`. The git repository used to build EC2 application
- `APP_GIT_BRANCH`. The git branch used to build the EC2 application

Secrets that need to be added to each GitHub Action Environment are as follows:  
- `ANSIBLE_USER`. User that Ansible logs in as.  
- `AWS_ACCESS_KEY`. AWS Access Key  
- `AWS_SECRET_KEY`. AWS Secret Key  
 