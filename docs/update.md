# Commands to Update the VM Operating System (OS) and Crossfire Codebase

## OS Update

 1. Launch the terminal application
 2. Enter the following command: `sudo apt update && sudo apt upgrade`
 3. If updates are available, press the `y` key to approve and install the updates

## Server Update

 1. Launch the terminal application
 2. Check for updates in the archetypes directory
    1. `cd`
    2. `cd crossfire-crossfire-arch`
    3. `git pull`
    4. `cd ..`
 3. Check for updates in the maps directory
    1. `cd crossfire-crossfire-maps/`
    2. `git pull`
    3. `cd ..`
 4. Check for updates in the server directory
    1. `cd lib`
    2. `make do-collect`
    3. `cd ..`
    4. `sh autogen.sh && make && sudo make install`

 NOTE: If you make any changes to the `settings` and/or `config.h` that has a shortcut on the desktop, you will need to run the server compile steps to make those changes active; you will also need to stop and restart the Crossfire server for those changes to go live as well

For error messages encountered during the compile, check the Crossfire Wiki for [troubleshooting steps](http://wiki.cross-fire.org/dokuwiki/doku.php/server:server_compiling#troubleshooting).

### Sample Output of Server Compile

```bash

cfdev@cf-devel-beta2:~/crossfire-crossfire-server$ cd
cfdev@cf-devel-beta2:~$ cd crossfire-crossfire-arch/
cfdev@cf-devel-beta2:~/crossfire-crossfire-arch$ git pull
Already up to date.
cfdev@cf-devel-beta2:~/crossfire-crossfire-arch$ cd ..
cfdev@cf-devel-beta2:~$ cd crossfire-crossfire-maps/
cfdev@cf-devel-beta2:~/crossfire-crossfire-maps$ git pull
Already up to date.
cfdev@cf-devel-beta2:~/crossfire-crossfire-maps$ cd ..
cfdev@cf-devel-beta2:~$ cd crossfire-crossfire-server/
cfdev@cf-devel-beta2:~/crossfire-crossfire-server$ git pull
Already up to date.
cfdev@cf-devel-beta2:~/crossfire-crossfire-server$ cd lib/
cfdev@cf-devel-beta2:~/crossfire-crossfire-server/lib$ make do-collect
rm -f .collect-stamp
make collect
make[1]: Entering directory '/home/cfdev/crossfire-crossfire-server/lib'
touch .collect-stamp
rm -f crossfire.arc crossfire.face crossfire.trs crossfire.tar crossfire.artifacts
../server/crossfire-server -data . -conf ./config \
  -pack-assets archs crossfire.arc \
  -pack-assets faces crossfire.face \
  -pack-assets treasures crossfire.trs \
  -pack-assets images crossfire.tar \
  -pack-assets artifacts crossfire.artifacts
[II] Initializing modules
[II]   citybell (Ring bells every hour for defined temples): activated
[II]   citylife (Add NPCs in towns): activated
[II]   rhg (Add random maps to exits in towns): disabled
[II] Starting to collect assets from .
[II] Finished collecting assets from .
24/05/25 23:49:07 [II] Crossfire v1.75.0-1373-g747ce5087
24/05/25 23:49:07 [II] Cleaning up...
24/05/25 23:49:07 [II] Cleaning modules
24/05/25 23:49:07 [II]   citybell (Ring bells every hour for defined temples): closed
24/05/25 23:49:07 [II]   citylife (Add NPCs in towns): closed
make[1]: Leaving directory '/home/cfdev/crossfire-crossfire-server/lib
cfdev@cf-devel-beta2:~/crossfire-crossfire-server/lib$ cd ..
cfdev@cf-devel-beta2:~/crossfire-crossfire-server$ sh autogen.sh && make && sudo make install

< multiple lines of scrolling text>

make[2]: Nothing to be done for 'install-exec-am'.
make[2]: Nothing to be done for 'install-data-am'.
make[2]: Leaving directory '/home/cfdev/crossfire-crossfire-server'
make[1]: Leaving directory '/home/cfdev/crossfire-crossfire-server'
cfdev@cf-devel-beta2:~/crossfire-crossfire-server$

```


## Crosfire GTKv2 Client Update

 1. Launch the terminal application
 2. Check for updates in the client directory
    1. `cd`
    2. `cd crossfire-crossfire-client`
    3. `git pull`
    4. `cd sounds`
    5. `git pull`
    6. `cd ..`
    7. `cd build`
    8. `cmake .. & build && sudo make install`


### Sample Output of GTKv2 Client Compile

```bash

cfdev@cf-devel-beta2:~/crossfire-crossfire-server$ cd
cfdev@cf-devel-beta2:~$ cd crossfire-crossfire-client/
cfdev@cf-devel-beta2:~/crossfire-crossfire-client$ git pull
Already up to date.
cfdev@cf-devel-beta2:~/crossfire-crossfire-client/sounds$ git pull
Already up to date.
cfdev@cf-devel-beta2:~/crossfire-crossfire-client/sounds$ cd ..
cfdev@cf-devel-beta2:~/crossfire-crossfire-client$
cfdev@cf-devel-beta2:~/crossfire-crossfire-client$ cd build/
cfdev@cf-devel-beta2:~/crossfire-crossfire-client/build$ cmake .. && make && sudo make install
-- Configuring done (0.3s)
-- Generating done (0.0s)
-- Build files have been written to: /home/cfdev/crossfire-crossfire-client/build
[ 35%] Built target cfclient
[ 42%] Built target test-metaserver
[100%] Built target crossfire-client-gtk2
[ 35%] Built target cfclient
[ 42%] Built target test-metaserver
[100%] Built target crossfire-client-gtk2
Install the project...
-- Install configuration: ""
-- Up-to-date: /usr/local/share/crossfire-client/sounds
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Gun-5.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Puke.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/claws.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Creaky-1.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/fire-spell.wav.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/potion.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/knife.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Explosion.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/fire-spell.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/lightning1.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Missed.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/sounds.conf
-- Up-to-date: /usr/local/share/crossfire-client/sounds/su-fanf.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/swish.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Teeswing.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/sword-1.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Missle1.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/miss-1.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/drip.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/miss-1.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/painb.wav.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/bugle_charge.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/phit2.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Whoosh.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/gong.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/fist.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/step_lth1.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Tear.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/knife.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/first_try.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/COPYING
-- Up-to-date: /usr/local/share/crossfire-client/sounds/FloorTom.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/ouch1.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/MetalCrash.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/Evil_Laugh.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/squish.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/potion.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/sword-1.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/claws.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/painb.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/click1.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/click2.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/TowerClock.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/fist.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/chord.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/navar.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/wilderness.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/scorn.mp3.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/wilderness.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/navar.ogg.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/scorncounty.mp3
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/scorncounty.mp3.LICENSE
-- Up-to-date: /usr/local/share/crossfire-client/sounds/music/scorn.mp3
-- Up-to-date: /usr/local/share/crossfire-client/sounds/blip.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/boink2.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/sci_fi_gun.wav
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/pre-applypatch.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/commit-msg.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/prepare-commit-msg.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/applypatch-msg.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/pre-push.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/fsmonitor-watchman.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/push-to-checkout.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/pre-rebase.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/pre-commit.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/update.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/sendemail-validate.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/post-update.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/pre-receive.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/hooks/pre-merge-commit.sample
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/refs
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/refs/heads
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/refs/heads/master
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/refs/remotes
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/refs/remotes/origin
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/refs/remotes/origin/HEAD
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/logs/HEAD
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs/tags
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs/heads
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs/heads/master
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs/remotes
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs/remotes/origin
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/refs/remotes/origin/HEAD
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/description
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/HEAD
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/packed-refs
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/info
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/info/exclude
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/objects
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/objects/pack
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/objects/pack/pack-df16d4fc6c36fc42da3b10cbb375be70fd12ad53.pack
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/objects/pack/pack-df16d4fc6c36fc42da3b10cbb375be70fd12ad53.rev
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/objects/pack/pack-df16d4fc6c36fc42da3b10cbb375be70fd12ad53.idx
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/objects/info
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/config
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/branches
-- Up-to-date: /usr/local/share/crossfire-client/sounds/.git/index
-- Up-to-date: /usr/local/share/crossfire-client/sounds/step_lth1.ogg
-- Up-to-date: /usr/local/share/crossfire-client/sounds/magic.wav
-- Up-to-date: /usr/local/share/crossfire-client/themes
-- Up-to-date: /usr/local/share/crossfire-client/themes/Black
-- Up-to-date: /usr/local/share/crossfire-client/themes/Standard
-- Up-to-date: /usr/local/share/crossfire-client/ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/oroboros.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/gtk-v1.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/un-deux.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/dialogs.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/meflin.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/v1-redux.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/chthonic.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/sixforty.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/eureka.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/lobotomy.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/gtk-v2.ui
-- Up-to-date: /usr/local/share/crossfire-client/ui/caelestis.ui
-- Up-to-date: /usr/local/share/applications/crossfire-client.desktop
-- Up-to-date: /usr/local/share/icons/hicolor/16x16/apps/crossfire-client.png
-- Up-to-date: /usr/local/share/icons/hicolor/32x32/apps/crossfire-client.png
-- Up-to-date: /usr/local/share/icons/hicolor/48x48/apps/crossfire-client.png
-- Up-to-date: /usr/local/bin/crossfire-client-gtk2
cfdev@cf-devel-beta2:~/crossfire-crossfire-client/build$

```

## CRE Update

The CRE Update requires that the game server is updated and compiled first!

 1. Launch the terminal application
 2. Change directory (`cd`) to the `utils` directory
    1. `cd`
    2. `cd crossfire-crossfire-server/utils/cre/`
    3. `qmake`
    4. `make`
 3. Launch CRE using `./cre` or `./home/cfdev/crossfire-crossfire-server/utils/cre/cre`


### Sample Output of CRE Build

```bash

cfdev@cf-devel-beta2:~/crossfire-crossfire-client/build$ cd
cfdev@cf-devel-beta2:~$ cd crossfire-crossfire-server/utils/cre/
cfdev@cf-devel-beta2:~/crossfire-crossfire-server/utils/cre$ qmake
cfdev@cf-devel-beta2:~/crossfire-crossfire-server/utils/cre$ make

< multiple lines of scrolling text a few minutes later>

.so /usr/lib/x86_64-linux-gnu/libQt5Core.so -lGL
/usr/bin/ld: ../../common/libcross.a(map.o): in function 'save_map(mapstruct*, int)':
/home/cfdev/crossfire-crossfire-server/common/map.cpp:1429:(.text+0x2da8): warning: the use of 'tempnam' is dangerous, better use 'mkstemp'
cfdev@cf-devel-beta2:~/crossfire-crossfire-server/utils/cre$

```

## JX Client Update

The cf-devel-vm is not configured to compile the JX Client, a snapshot release of the client is downloaded from the project site at SourceForge

 1. Launch the terminal application
 2. Check for updates in the archetypes directory
    1. `cd`
    2. `cd Desktop`
    3. `rm jxclient.jar`
    4. `wget https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar`
    5. `chmod +x jxclient.jar`

You should now be able to launch the JX Client by clicking on the file icon on the Desktop

### Sample Output of JX Client Update

```bash

cfdev@cf-devel-beta2:~$ cd
cfdev@cf-devel-beta2:~$ cd Desktop/
cfdev@cf-devel-beta2:~/Desktop$ rm jxclient.jar
cfdev@cf-devel-beta2:~/Desktop$ wget https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar
--2024-05-26 23:53:18--  https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar
Resolving sourceforge.net (sourceforge.net)... 104.18.12.149, 104.18.13.149, 2606:4700::6812:c95, ...
Connecting to sourceforge.net (sourceforge.net)|104.18.12.149|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar/ [following]
--2024-05-26 23:53:19--  https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar/
Reusing existing connection to sourceforge.net:443.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar/download [following]
--2024-05-26 23:53:19--  https://sourceforge.net/projects/crossfire/files/jxclient/jxclient.jar/download
Reusing existing connection to sourceforge.net:443.
HTTP request sent, awaiting response... 302 Found
Location: https://downloads.sourceforge.net/project/crossfire/jxclient/jxclient.jar?ts=gAAAAABmVBG_6oMABBGaQK1vtNp6igLqGir4WRTj_jze3I_GDa4E3OP5f37tItljnrSXZLgCGflCOHo0q002VIclvukE133Y-A%3D%3D&use_mirror=master&r= [following]
--2024-05-26 23:53:19--  https://downloads.sourceforge.net/project/crossfire/jxclient/jxclient.jar?ts=gAAAAABmVBG_6oMABBGaQK1vtNp6igLqGir4WRTj_jze3I_GDa4E3OP5f37tItljnrSXZLgCGflCOHo0q002VIclvukE133Y-A%3D%3D&use_mirror=master&r=
Resolving downloads.sourceforge.net (downloads.sourceforge.net)... 204.68.111.105
Connecting to downloads.sourceforge.net (downloads.sourceforge.net)|204.68.111.105|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://master.dl.sourceforge.net/project/crossfire/jxclient/jxclient.jar?viasf=1 [following]
--2024-05-26 23:53:19--  https://master.dl.sourceforge.net/project/crossfire/jxclient/jxclient.jar?viasf=1
Resolving master.dl.sourceforge.net (master.dl.sourceforge.net)... 216.105.38.12
Connecting to master.dl.sourceforge.net (master.dl.sourceforge.net)|216.105.38.12|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 22908411 (22M) [application/java-archive]
Saving to: ‘jxclient.jar’

jxclient.jar                           100%[=========================================================================>]  21.85M  1.73MB/s    in 13s

2024-05-26 23:53:32 (1.74 MB/s) - ‘jxclient.jar’ saved [22908411/22908411]

cfdev@cf-devel-beta2:~/Desktop$ chmod +x jxclient.jar

```

## Gridarta Map Editor Update

The cf-devel-vm is not configured to compile the Gridarta map editor, a snapshot release of the client is downloaded from the project site at SourceForge

 1. Launch the terminal application
 2. Check for updates in the archetypes directory
    1. `cd`
    2. `cd Desktop`
    3. `rm CrossfireEditor.jar`
    4. `wget https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar`
    5. `chmod +x CrossfireEditor.jar`

You should now be able to launch the Gridarta map editor by clicking on the file icon on the Desktop

### Sample Output of Gridarta Map Editor Update

```bash

cfdev@cf-devel-beta2:~$ cd
cfdev@cf-devel-beta2:~$ cd Desktop/
cfdev@cf-devel-beta2:~/Desktop$ rm CrossfireEditor.jar
cfdev@cf-devel-beta2:~/Desktop$ wget https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar
--2024-05-26 23:55:47--  https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar
Resolving sourceforge.net (sourceforge.net)... 104.18.12.149, 104.18.13.149, 2606:4700::6812:d95, ...
Connecting to sourceforge.net (sourceforge.net)|104.18.12.149|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar/ [following]
--2024-05-26 23:55:47--  https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar/
Reusing existing connection to sourceforge.net:443.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar/download [following]
--2024-05-26 23:55:47--  https://sourceforge.net/projects/crossfire/files/gridarta-crossfire/CrossfireEditor.jar/download
Reusing existing connection to sourceforge.net:443.
HTTP request sent, awaiting response... 302 Found
Location: https://downloads.sourceforge.net/project/crossfire/gridarta-crossfire/CrossfireEditor.jar?ts=gAAAAABmVBJT5hj72iKCJFL026gnkiyiXHF_ON1J8NiSfvOPTJ3hfmxVr8_RmkzeOKiSYlbxhPx8HVAptUMy6qRouxZjItJlqg%3D%3D&use_mirror=gigenet&r= [following]
--2024-05-26 23:55:47--  https://downloads.sourceforge.net/project/crossfire/gridarta-crossfire/CrossfireEditor.jar?ts=gAAAAABmVBJT5hj72iKCJFL026gnkiyiXHF_ON1J8NiSfvOPTJ3hfmxVr8_RmkzeOKiSYlbxhPx8HVAptUMy6qRouxZjItJlqg%3D%3D&use_mirror=gigenet&r=
Resolving downloads.sourceforge.net (downloads.sourceforge.net)... 204.68.111.105
Connecting to downloads.sourceforge.net (downloads.sourceforge.net)|204.68.111.105|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://gigenet.dl.sourceforge.net/project/crossfire/gridarta-crossfire/CrossfireEditor.jar?viasf=1 [following]
--2024-05-26 23:55:48--  https://gigenet.dl.sourceforge.net/project/crossfire/gridarta-crossfire/CrossfireEditor.jar?viasf=1
Resolving gigenet.dl.sourceforge.net (gigenet.dl.sourceforge.net)... 69.65.16.142
Connecting to gigenet.dl.sourceforge.net (gigenet.dl.sourceforge.net)|69.65.16.142|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 9199004 (8.8M) [application/java-archive]
Saving to: ‘CrossfireEditor.jar’

CrossfireEditor.jar                    100%[=========================================================================>]   8.77M  5.04MB/s    in 1.7s

2024-05-26 23:55:50 (5.04 MB/s) - ‘CrossfireEditor.jar’ saved [9199004/9199004]

cfdev@cf-devel-beta2:~/Desktop$ chmod +x CrossfireEditor.jar

```
