# ChangeLog Summary

Notable changes, for full details check `gitlog` or the [GitHub project website](https://github.com/tannerrj/crossfire-devel-vm/commits/main/)


2024-July-10

  * VM Updates
    * Content updates via `git pull` for crossfire-crossfire-maps
    * System updates via `sudo apt update && sudo apt upgrade`
    * Crossfire server compiled now with Mapper support, but map content has not been generated in the VM
      * For Mapper output examples, see <https://github.com/tannerrj/cfmapper-content> for raw content or <http://www.crossfireatlas.net/> for a more content rich version
  * Scripts
    * Update `build.sh` script and `README-build.md` to enable Mapper
  * Docs update
    * Update `README` with instructions on how to launch GTKv2 Client, Crossfire Server, and CRE using desktop icons
    * Update `READNE` with information on how to use and access Mapper output

2024-July-05

  * Docs Update
    * Updated README to fix command syntax to launch the GTKv2 client, Crossfire CRE, and Crossfire Server from the CLI

----

2024-July-03

  * Second release, `cf-devel-beta2`

2024-July-01

  * VM Updates
    * Code updates via `git pull` for crossfire-crossfire-arch
    * Update Crossfire Archetypes to git rev 99a461
      *  Remove godpower attacks from some angels
    * System updates via `sudo apt update && sudo apt upgrade`
    * Recompiled Crossfire Server, now running Crossfire v1.75.0-1381-gb638853f3

2024-June-25

  * Docs Update
    * Numerous spelling, grammar, and wording updates to multiple README files

2024-June-14

  * Script Updates
    * New bash script to update the archetypes, maps, and server directories
    * New bash script to update the client (GTKv2 Client) and sounds directories
    * New bash script to set up all the dependencies and code needed for the VM development environment
    * Created README related files for the build, client, and server scripts
  * VM Updates
      * Code updates via `git pull` for crossfire-crossfire-server
      * Recompiled Crossfire Server, now running Crossfire v1.75.0-1381-gb638853f3
        * Server: New dm command, [swap](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands#swap)
        * Server: Remove custom map swap times
        * Maps: Remove no longer valid or functional swap_time setting in map headers
      * System updates via `sudo apt update && sudo apt upgrade`
  * Docs Update
    * Initial creation of `changelog.md` file
    * Update `roadmap.md` file
      * Status update on using yad
      * Release schedule needs documentation
      * Maintain HOWTO documentation

2024-June-10

  * Docs Updates
    * Format updates to setup.md file
    * Format updates to update.md file
    * Wording and format updates to the README file

2024-June-03

  * VM Updates
    * Code updates via `git pull` for crossfire-crossfire-client
    * Update GTKv2 Client to git rev a65e1d
      * Fix default options
    * Code updates via `git pull` for crossfire-crossfire-server
      * Recompiled Crossfire Server, now running Crossfire v1.75.0-1377-gf2db9f20c
        * Server: Disable create_home_portals
    * System updates via `sudo apt update && sudo apt upgrade`

2024-June-01

  * VM Updates
    * Code updates via `git pull` for corssfire-crossfire-client
    * Update GTKv2 Client to git rev a46aeac
      * Make music volume configurable
    * System updates via `sudo apt update && sudo apt upgrade`

2024-May-31

  * VM Updates
    * Added desktop shortcut link to config.h file
    * Content updates via `git pull` for crossfire-crossfire-maps
    * Code updates via `git pull` for corssfire-crossfire-server
      * Recompiled Crossfire Server, now running Crossfire v1.75.0-1376-gf5b374077
    * System updates via `sudo apt update && sudo apt upgrade`
  * Docs Updates
    * Updated README file with notes and instructions on modifying config.h file
    * Updated README file with notes and instructions on when the server needs a recompile for code changes
    * Updated README file with a reference to the map reset command on the wiki

---

2024-May-30

  * Initial release, `cf-devel-beta1`

