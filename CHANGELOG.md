## [0.6.0] - 2018-11-25
- test kitchen: ubuntu 16.04 -> 18.04, remove x61 
- swap out my own branch of virtualbox-cookbook 
- remove terraform cookbook usage
- switch from array of packages to each to identify 18.04 group changes (git-core -> git)
- Update to d\_devbox 0.3.0


## [0.5.0] - 2018-07-12
- remove gitkraken and minecraft from gibson
- clean up builds to be just gibson and laptops (remove pi & basic)
- update d\_devbox for virtualbox 5.2

## [0.4.44] - 2018-04-23
- upgrade to hugo 0.40

## [0.4.43] - 2018-02-18
- add `_etcher` recipe to install apt repo and install etch

## [0.4.42] - 2018-02-04
- relax deps and point to custom repos for chef13 compatibility

## [0.4.41] - 2017-05-03
- update d\_devbox to latest gitkrake
- added ncdu

## 0.4.38 - 2017-04-22
- adding hugo

## 0.4.37 - 2017-04-21
- remove nodejs from Gibson because it doesn't gracefully support 16.10

## 0.4.36 - 2017-04-12
- updated d\_devbox to allow new chefdk to roll in
- fix packer tests/verify

## 0.4.35 - 2017-04-12
- gitkraken v2.3.3
- moreutils & ufraw
