# Crosfire Development VirtualBox VM

## Description

This is the initial release (Beta-1) of an Ubuntu Noble 24.04 (Gnome) VirtualBox virtual machine (VM) with all the necessary components to run the game server, map editor, gtkv2 client, JX Client, Crossfire Resource Editor (CRE) and additional tools to modify and create new graphics. The VM also includes software packages to communicate with the game project players and developers via [Discord](https://crossfire.real-time.com/discord/) or [IRC](https://crossfire.real-time.com/irc/).

While it should be safe to install and run the VM, the actual performance and stability of the VM need further testing. So, use it cautiously and back up any critical data as you work in the VM!

## Installation

See the `setup.md` file for instructions on the download link via [Google Drive](https://drive.google.com/file/d/14h4jBSPbw_QnwRSoPQ-sXx8wrgwn3QDo/view?usp=sharing) (4.99 GB), hashsum information, installation, and setup of the VM.

### Requirements

The software packages include VirtualBox and hardware capable of running VirtualBox with the minimum hardware of:

 * 64bit multicore CPU
 * 8GB of RAM or more
 * 30GB of free disk space

See the `intro.md` write-up for more information on the VM configuration.

## Guidelines

File shortcuts have been created on the Desktop to `settings` and `dm_file` and `config.h`

`settings` is where you can make changes with how the game is configured.

 * BE CAREFUL! It is possible to make changes that will not allow the game to run normally!!
 * Any changes to the settings file will require you to recompile the server (see `update.md` for instructions on that) and also stop and restart the server before the changes are live

`dm_file` is where you can select which player(s) have "god-mode" or DM (dungeon master) and optionally password-protect that access on the server.

 * Once this file is updated and saved, a recompile or restart of the server is -NOT- necessary; the permissions go live once the file is saved
 * See the wiki page, [DM Commands](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands), for more information

`config.h`is where you can modify many of the game mechanics and features such as enchanting weapons, enchanting armor, character movement speed, etc. along with how the server is managed and maintained.

 * BE CAREFUL! It is possible to make changes that will not allow the game to run normally!!
 * Any changes to the config.h file will require you to recompile the server (see `update.md` for instructions on that) and also stop and restart the server before the changes are live

Generally, any map updates do not require a server recompile or server reset. You can wait for the map to time out and reset via normal game mechanics (roughly two hours actual time) or you can use the [DM reset command](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands#reset)

Server configuration or code changes will require a server recompile and a server restart to activate those changes.

With how the server is currently configured in the VM, any new archetypes or graphic updates will require a server recompile (see the `make do-collect` command in the `update.md` file) and a server restart to activate those changes.

## Usage

The virtual machine (VM) provides an all-in-one development environment for the game of [Crossfire](https://sourceforge.net/projects/crossfire/).

The `update.md` file contains instructions for updating the sourcecode and then compiling Crossfire server, GTKv2 Client, and CRE.

Also included in `update.md` are instructions for downloading the latest snapshot release of Gridarta for Crossfire map editor, and JX Client.

### GTKv2 Client Launch

To launch the game client using the Terminal application: `./home/cfdev/crossfire-crossfire-client/build/gtk-v2/src/crossfire-client-gtk2`

### Crossfire Server Launch

To launch the game server using the Terminal application: `./home/cfdev/crossfire-crossfire-server/server/crossfire-server`

### Crossfire CRE

To launch CRE using the Terminal application: `./home/cfdev/crossfire-crossfire-server/utils/cre/cre`

### JX Client

Double click the `jxclient.jar` file on the Desktop

### Gridarta Map Editor

Double click the `CrossfireEditor.jar` file on the Desktop

## Contributing

 * Contributions are welcome.
 * Pull requests are welcome.
 * Creating a fork on this code base is also welcome.

## Questions

I can be reached via [tannerrj GitHub Profile](https://github.com/tannerrj)

## Licenses:

The virtual machine runs multiple software with numerous license associated with them, see <https://ubuntu.com/legal/open-source-licences>.

VirtualBox is licensed under the `GNU General Public License, version 3`, <https://www.virtualbox.org/wiki/GPLv3>.

Crossfire and it's related code base is released using `GNU General Public License version 2.0 (GPLv2)` license, <https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html>.

If a license is required for the creation and release of the VM, then I am choosing to use `MIT license` - <https://opensource.org/license/mit> or included as the `LICENSE` file in this project.


## Crossfire Social Media Links

 * [Facebook](https://www.facebook.com/crossfireproject/)
 * [Mastodon](https://mastodon.social/@crossfiremrpg)
 * [X (Formerly Twitter)](https://twitter.com/crossfiremrpg/)
