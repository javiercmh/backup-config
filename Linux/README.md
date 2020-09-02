# Restoring configs

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

### Spotify shortcuts

The last section will put the `spotify_control` script in a convenient location, so we only need to manually set the following keyboard shortcuts:

    /opt/spotify_control previous 	--> Super + ,
    /opt/spotify_control next 	    --> Super + .
    /opt/spotify_control playpause	--> Super + /

### SSH

Run `ssh.sh`.
