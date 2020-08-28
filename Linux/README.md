# Restoring configs

## Grub2

Remember last selection:

```sh
sudo sed -i '/GRUB_DEFAULT=0/c\GRUB_DEFAULT=saved\nGRUB_SAVEDEFAULT=true' /etc/default/grub`
sudo update-grub
```

## Anaconda

    $ conda env create -f datasci.yml

To export an environment run the following:

    $ conda env export -n {name} > {name}.yml

## VSCode

Move the files to the following locations:

    /home/javier/.config/Code/User/keybindings.json
    /home/javier/.config/Code/User/settings.json


## Spotify

0. Copy `spotify_control` to /opt/
1. `sudo chmod +x spotify_control`
2. Create custom shortcuts for:

    /opt/spotify_control previous 	--> Super + ,
    /opt/spotify_control next		--> Super + .
    /opt/spotify_control playpause	--> Super + /
