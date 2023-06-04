Integration Lab - Jenkins, GitLab & Artifactory:
================================================
1. install docker & docker compose.
2. run 'docker compose up -d'.
3. the servers runs on your local host:
    - GitLab: port 80,
    - Jenkins: port 8080,
    - Artifactory: port 8081,
   open those servers on a browser and initiallize them as guided.
   artifactory is already configured with user: 'admin':'password', with admin privileges.

Terraform - kubernetes lab automation:
======================================
Using the terraform utility, one can easily install a kubernetes labratory using kvm virtual machinery and Terraform.
1. install kvm/qemu.
2. install terraform.
3. create id_rsa key by using key-gen command with default settings.
4. deploy the virtual machines by using 'terraform init' and 'terraform apply' commands.
    - it might take sometime to initiate, it waits for the dhcp.
5. connect to kubemaster via ssh (if you missed the ip use 'terraform output').