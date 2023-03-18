# komorebi-helpers
Some helper scripts to add the komorebi tiling window manager program (https://github.com/LGUG2Z/komorebi) to autostart.

Also features a different default layout.

# How to use
- Grab the lastest release installer binary for komorebi from the repo: https://github.com/LGUG2Z/komorebi/releases/tag/v0.1.15
- Install it and allow it to set the path
- Get the files from this repo by cloning the repo or just downloading them
- execute install-to-autostart.bat to add komorebi to autostart.

# How it works
It copies the layout, a vbs launch script and a bat run script to your local appdata folder, then creates a link to the vbs script in your autostart folder, which will make it autostart.

The vbs launch script just runs the run.bat script in the background (without opening a terminal/console window).

The run.bat script first executes komorebi, then waits a little so that komorebi can be configured from the other cli tool, komorebic.

Komorebic is used to change the settings to my personal tastes.
You can adjust it to fit your needs.

This uses layout.json as a layout.
I created the file with the webtool provided by the dev: https://lgug2z.github.io/komorebi-custom-layout-generator/
You can edit it to your preferences, also.

Whenever you change your preferences, just re-run install-to-autostart.bat, then log out and back in or reboot for the changes to take effect.

You can also kill the task and restart it manually.
You can also just run run.bat for testing your new preferences.
Closing the terminal window will quit komorebi, so it's easy to make adjustments this way.
