# Troubleshooting

----
## virtualbox fails at launch

> Failed to acquire the VirtualBox COM object.

or

> ==> virtualbox-iso: Error configuring VirtualBox to suppress messages: VBoxManage error: VBoxManage: error: Failed to create the VirtualBox object!
==> virtualbox-iso: VBoxManage: error: Document is empty.

Vbox [talk](https://wiki.archlinux.org/index.php/Talk:VirtualBox) on archlinux


    cp ~/.config/VirtualBox/VirtualBox.xml-prev ~/.config/VirtualBox/VirtualBox.xml


## vagrant ssh takes a lot of time during build

> Waiting for SSH to become available...

Wait few minutes it takes a [lot of time](https://github.com/geerlingguy/packer-ubuntu-1604/issues/37)