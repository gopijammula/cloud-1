### Install ansible
```
    sudo apt update
    sudo apt install software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible --yes
```
### Ansible Playbook run steps

* To check the ansible state
    ``` ansible --version ```
* Generating key of the user
    ``` ssh-keygen ```
* Copy the key to the node
    ``` ssh-copy-id node-username@publicip ```
* To copy in all the nodes
    ``` ssh-copy-id -i inventory-file-name ```
* login to node 
    ``` sudo visudo ```
* Give user Sudo permissions to execute any command without asking for password 
    ``` exit ```
* copy / pull / create all the ansible files
* To check Syntax of the ansible file
    ``` ansible-playbook -i inventory-file-name playbook-name --syntax-check ```
* To execute playbook with out actually installanything
    ``` ansible-playbook -i inventory-file-name playbook-name --check ```
* To execute playbook
    ``` ansible-playbook -i inventory-file-name playbook-name ```