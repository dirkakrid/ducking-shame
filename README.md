# ducking-shame
random scripts for nspawn fun


erm yeh works for me 


create a tmpfs to test out updates configs etc 

if it works copy it to overlayfs or merge the tmpfs into overlayfs 


raws probably one of the ugliest things ive ever written
but it needs merging with install and nspawn anyway 

been trying to write udev rules to take usb hotplug and unlock gnupg for 60 seconds
turns out gnupg doesnt do what i want 
cant encrypt signed data so it isnt clear text over the network ie only viewable by public key holders 
and i cant take any password input other than pinentry which refuses to work with chroot,su,sudo usb and dd
so totally shoots all the functionality i want in the face 
was assuming gpg-agent would allow direct input to unlock keyring /shrug 
