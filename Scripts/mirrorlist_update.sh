cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup &
sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
echo VSE OK
