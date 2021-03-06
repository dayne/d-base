# d-base

> `d-base` is a home base cookbook to focus and organize my own personal chef systems. Enjoy at your own risk. 

d-base has the following recipes:

* `dbase::default` - basic stuff - nothing special
* `dbase::gibson` - Primary goal of this repo.
  * Includes the above `default`
  * [d_devbox](https://github.com/dayne/d_devbox) - installs Chefdk, VirtualBox, Vagrant, Packer, Habitat, and other devops tools
  * [Steam](http://store.steampowered.com/) - for the gaming
  * [QGIS](http://qgis.org) - via my own [qgis-cookbook](https://github.com/dayne/qgis-cookbook) for the geospatial viewing goody that is QGIS.
  * [minecraft](http://minecraft.net) - via the [minecraft-installer-ubuntu cookbook](https://supermarket.chef.io/cookbooks/minecraft-installer-ubuntu) for the diamonds and creepers
  * [gitkraken](https://www.gitkraken.com/) - Git GUI - via manual .deb install in the [`_gitkraken.rb`](/dayne/d-base/blob/master/recipes/_gitkraken.rb) recipe
  * [ruby_rbenv](https://github.com/sous-chefs/ruby_rbenv) to provide ruby
    environments and ruby build.
  * [docker](https://www.docker.com/) - via the official [docker cookbook](https://supermarket.chef.io/cookbooks/docker)
  * [i3wm](http://i3wm.org) - a tiling window manager that I decided to embrace for my Linux systems
  * misc other packages and tweaks for Gibson
* `dbase::pi`
  * tweaks to all pi's in my life
    * US Keyboard layout instead of UK
    * capslock becomes control key
  * this will be pulled out in the future to a more `pi` targeted repo.

#### Test Kitchen

Three test suites defined for test kitchen: `gibson` and `pi`.
* `gibson` is to test the bulk of the stuff here: default,gibson,chefdk, and others work fine in Ubuntu-16.10.  Takes a bit of time to converge.
* `pi` is a basic sanity checker pi related stuff using debian instead of Ubuntu.
* `chefdk` focuses on the chefdk stack is converging and verifying cleanly. A bit quicker than gibson to converge.

[Inspec](http://inspec.io) tests try to [verify](https://github.com/dayne/d-base/tree/master/test/integration) the bulk of actions done. If you've got a sane chef development workstation (see `chefdk` recipe in this repo) - then you can sanity check things converge and verify by doing:

```
    kitchen converge
    kitchen verify
```
