# Restoring configs

This is a collection of bash scripts to set up my computer when I format it.

Assumptions:
- OS: Ubuntu latest
- Username: javier

## Allow executing scripts

```sh
chmod +x *.sh
sudo su
```
## Installing apps

Run `install_apps.sh`.

------------------------

## Restore configs

Although some of them will be restored during installation, there are some things that must be done manually or that do not fit into the _app_ category.

### Anaconda

It's best to install this manually with **no root**.

Say yes when asked to run `conda init`.

```sh
wget -O miniconda.sh "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
bash miniconda.sh
rm miniconda.sh
```

Open a new terminal and run:

```sh
conda config --set auto_activate_base false
conda update -n base -c defaults conda
conda env create -f datasci.yml
```

The last line is used to restore a conda environment.

To export an environment run the following:

    $ conda env export -n {name} > {name}.yml

### Desktop background

```sh
cp ../Nidarosdomen.jpg /home/javier/Pictures
gsettings set org.gnome.desktop.background picture-uri file:////home/javier/Pictures/Nidarosdomen.jpg
```

### Grub: remember choice

This will make grub remember the last booted OS.

Just run `grub_remember_choice.sh`.

### Local time

There's a difference in the way Windows and Linux handle timezones. If you have dual-boot, the easiest way to make both OS's show the same time, run the following command:

`$ timedatectl set-local-rtc 1 --adjust-system-clock`

### Path: add bin directory

After installing `virtualenv` using pip3, it might not be usable right away until you add it to PATH:

`$ echo export PATH="/home/javier/.local/bin:$PATH" >> /home/javier/.bashrc`

### Spotify shortcuts

The last section will put the `spotify_control` script in a convenient location, so we only need to manually set the following keyboard shortcuts:

    /opt/spotify_control previous 	--> Super + ,
    /opt/spotify_control next 	    --> Super + .
    /opt/spotify_control playpause	--> Super + /

### SSH

Put password-protected `ssh.zip` with your .ssh folder inside and run `ssh.sh`.

### VPN TU Kaiserslautern

1. First install some software:

  `$ sudo apt install openconnect network-manager-openconnect-gnome`

2. Then create new network connection using "Multi-protocol VPN client (openconnect)".

3. Load the `T-Telesec-GlobalRoot-Class2.pem` certificate. A way to create a .pem from a .crt certificate is by running the following command:

  `$ openssl x509 -inform der -in T-Telesec-GlobalRoot-Class2.crt -out T-Telesec-GlobalRoot-Class2.pem`

For more information go to the [official website](https://www.rhrk.uni-kl.de/vpn/einrichtung/linux/#c9210).
