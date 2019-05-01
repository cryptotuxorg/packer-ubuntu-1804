## Testing Playbooks

Copy the content of your host public key
    cat ~/.ssh/id_rsa.pub

Create the VM

    cd test
    vagrant up
    vagrant ssh

Edit ~/.ssh/authorized_keys inside the VM and paste your host public key

Edit ~/.ssh/config on your host and add

    Host cryptotux-test
        Hostname 127.0.0.1
        Port 2222
        User vagrant
        IdentityFile ~/.ssh/id_rsa


Try the ssh connection

    ssh cryptotux-test
    exit

Try ansible connection

    ansible test -i ansible/hosts -m ping

## Prerequisites



    ansible-galaxy install geerlingguy.nfs
    ansible-galaxy install geerlingguy.packer-debian