# Indigo Install Template

A preset template for the Indigo installer. This can be used to make the Indigo installer automatically install and configure a desktop environment or window manager of your choice.

# Using this template

The name of your template will be the name of the folder that its files are contained in. If you use this repository as a GitHub template, then that folder name will be your repository name.

Write a short description for your project in the `description` file, this should be no more than a few words, as it needs to be displayed on one line.

The `pkg-pacman` file should be a list containing all pacman packages that you need to install. For example, you may choose to install `xorg` and `xfce4`.
Each package should be the exact pacman package name, on its own line, NOT comma separated. Don't forget to remove the example line.

The `pkg-custom` directory should contain any custom precompiled packages that aren't in the pacman repos. but you'd still like to include, like AUR packages.
If you have a working Arch (or Arch-based distro) install, you can precompile a package using `yay` by doing the following:
```
yay -G <package>
cd <package>
makepkg -s
```
This will leave you with a file with the extension of `.pkg.tar.zst`. This is your precompiled package - you can place it in the `pkg-custom` directory.
Don't forget to remove the empty placeholder package!

The `questions.sh` script is a shell script that is ran just before installation commences. It allows you to ask the user questions about their configuration before you install, for example, their Xorg keyboard layout. There are some example questions in the file - don't forget to remove them.

The `services` file is a list contaning every systemd service that needs to be enabled. If you need the username, use `$username`. Remember to remove the example line!

The `setup.sh` script is ran after installation. You can put anything you like in there to prepare the system.

Finally, the `config` directory acts like the root of the filesystem. It gets copied to the root of the final installation. This is where your configs should go! Assume the username is exactly `username`.
For example, if you wanted to configure `picom`, you would place your configuration file in `config/home/username/.config/picom/picom.conf`. You can make your own folders in here too, like `usr` and `etc`.
And don't forget to remove the example file in `config/home/username/.config`!
