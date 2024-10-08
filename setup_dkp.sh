pacman-key --recv BC26F752D25B92CE272E0F44F7FD5492264BB9D0 --keyserver keyserver.ubuntu.com
pacman-key --lsign BC26F752D25B92CE272E0F44F7FD5492264BB9D0
wget https://pkg.devkitpro.org/devkitpro-keyring.pkg.tar.xz
pacman -U devkitpro-keyring.pkg.tar.xz
cat <<EOF >> /etc/pacman.conf
[dkp-libs]
Server = https://pkg.devkitpro.org/packages

[dkp-windows]
Server = https://pkg.devkitpro.org/packages/windows/$arch/
EOF
cat /etc/pacman.conf
pacman -Syu
pacman -Sl dkp-libs
pacman -S nds-dev
