# d-base

> `d-base` is a home base cookbook to focus and organize my own personal chef systems. Enjoy at your own risk.

d-base has the following recipes:

* `dbase::default` - basic stuff - nothing special
* `dbase::chefdk` - makes an ubuntu system into a chef development workstation
  * [chefdk](https://downloads.chef.io/chefdk) - via [chef-dk cookbook](https://supermarket.chef.io/cookbooks/chef-dk)
  * [Atom Editor](https://atom.io) - via [atom cookbook](https://supermarket.chef.io/cookbooks/atom) with file-watcher and file-icons
  * [VirtualBox-5.1](https://www.virtualbox.org/) - via [_my own branch_](https://github.com/dayne/virtualbox-cookbook/tree/51update) of [virtualbox cookbook](https://supermarket.chef.io/cookbooks/virtualbox)
  * [vagrant](https://www.vagrantup.com/) - via [vagrant cookbook](https://supermarket.chef.io/cookbooks/vagrant) with winrm plugin
  * [habitat](https://www.habitat.sh/)
  * [terraform](https://www.terraform.io/) - via [_my own branch_](https://github.com/dayne/chef-terraform/tree/zipfile_fix) of the [terraform cookbook](https://github.com/rosstimson/chef-terraform)
* `dbase::gibson`
  * Includes the above `default` and `chefdk` recipes
  * [Steam](http://store.steampowered.com/) - for the gaming
  * [QGIS](http://qgis.org) - via my own [qgis-cookbook](https://github.com/dayne/qgis-cookbook) for the geospatial viewing goody that is QGIS.
  * [minecraft](http://minecraft.net) - via the [minecraft-installer-ubuntu cookbook](https://supermarket.chef.io/cookbooks/minecraft-installer-ubuntu) for the diamonds and creepers
  * [gitkraken](https://www.gitkraken.com/) - Git GUI - via manual .deb install in the [`_gitkraken.rb`](/dayne/d-base/blob/master/recipes/_gitkraken.rb) recipe
  * [chruby](https://github.com/postmodern/chruby/) and [ruby-build](https://github.com/rbenv/ruby-build) so users can select their own [ruby](http://ruby-lang.org/)
  * [docker](https://www.docker.com/) - via the official [docker cookbook](https://supermarket.chef.io/cookbooks/docker)
  * [i3] tiling window manager - because _why not?_
  * misc other packages and tweaks for Gibson
* `dbase::pi`
  * tweaks to all pi's in my life
    * US Keyboard layout instead of UK
    * capslock becomes control key

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
