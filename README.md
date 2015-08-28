# rootfs-a8
Rootfs for CortexA8 EMBoard of SunplusAPP

这是一个相对干净的根文件系统，主要包含了下面的第三方组件：

* Qt Embedded 4.7.0
* alsa
* bluez
* ncurses
* openssh
* php
* samba
* tslib

同时默认开启了下面的服务:

* ftp - 21端口使用/root作为主目录,221端口使用/作为主目录
* samba
* Web Server - 使用busybox自带的httpd,支持php

