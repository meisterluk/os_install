Operating system installation
=============================

:author:        meisterluk
:base-system:   xubuntu 20.04
:lastchange:    2020-08-15

Internet
--------

Browser:

* Mozilla Firefox #installed or Waterfox #app, with addons

  * Privacy badger #addon
  * ghostery #addon
  * uBlock Origin #addon

* Google Chromium #apt
* Torbrowser #apt
* Beaker browser #app

SFTP:

* Filezilla #apt

Network analysis:

* nmap  #apt
* `simple, concise shell interface for interacting with REST services <https://github.com/micha/resty>`_
* `HTTPie is a command line HTTP client <https://github.com/httpie/httpie>`_  #apt
* Wireshark
* gnupg2
* KeePassX
* curl
* Network manager

  * network-manager-openconnect-gnome
  * network-manager-pptp-gnome
  * network-manager-vpnc

* nmap

Communication:

* pidgin

  * IRC
  * Jabber with OTR

* Signal
* mumble

Shell
-----

* elvish  #apt
* yash  #apt

Many tools to consider:

* alternatives for coreutils

  * find: `fd is a simple, fast and user-friendly alternative to find <https://github.com/sharkdp/fd>`_
  * grep: `the silver searcher <https://github.com/ggreer/the_silver_searcher>`_
  * grep: `ack is a grep-like source code search tool <https://beyondgrep.com/>`_
  * grep: `ripgrep is a line-oriented search tool that recursively searches your current directory for a regex pattern <https://github.com/BurntSushi/ripgrep>`_
  * ssh: `bring your favorite shell wherever you go through the ssh without root access and system installations <https://github.com/xxh/xxh>`_
  * diff: icdiff  #apt
  * ls: `A modern version of ‘ls’ <https://github.com/ogham/exa>`_
  * ls: `lsp lists files, like ls command, but it does not attempt to meet that archaic POSIX specification <https://github.com/dborzov/lsp>`
  * cat: `A cat clone with syntax highlighting and Git integration <https://github.com/sharkdp/bat>`_
  * cat: `ccat is the colorizing cat. It works similar to cat but displays content with syntax highlighting. <https://github.com/jingweno/ccat>`_
  * cd: directory jumping (based on frequency)

    * `z: jump around <https://github.com/rupa/z>`_
    * `A command line tool which helps you navigate faster by learning your habits <https://github.com/skywind3000/z.lua>`_
    * `A faster way to navigate your filesystem <https://github.com/ajeetdsouza/zoxide>`_

* find CLI commands / handle shell history

  * `navi <https://github.com/denisidoro/navi>`_
  * fuzzy finder

    * `fzf: interactive Unix filter for command-line that can be used with any list <https://github.com/junegunn/fzf>`_
    * `shell plugin that seamlessly adds fuzzy search to tab completion of z <https://github.com/changyuheng/fz>`_

* selector: `percol <https://github.com/mooz/percol>`_
* blocking:

  * `Simple, native and efficient local advertising blocker <https://github.com/tanrax/maza-ad-blocking>`_
  * `Improve your security and privacy by blocking ads, tracking and malware domains <https://github.com/hectorm/hblock>`_

* up:

  * `up: Stop typing ../../.. endlessly <https://github.com/shannonmoeller/up>`_
  * `Quickly go back to a specific parent directory in bash instead of typing "cd ../../.." redundantly <https://github.com/vigneshwaranr/bd>`_

* information lookup

  * CLI commands

    * `how2: stackoverflow from the terminal <https://github.com/santinic/how2>`_
    * `has: check presence of various command line tools on the PATH and reports their installed version <https://github.com/kdabir/has>`_
    * `A fully-functional POSIX shell client for tldr. <https://github.com/raylee/tldr-sh-client>`_

  * `curl wttr.in <https://github.com/chubin/wttr.in>`_

* zsh specific:

  * `oh-my-zsh <https://ohmyz.sh/>`_: I like the rjk, linuxonly, and trapd00r themes
  * `git-extra-commands is a ZSH plugin that packages some extra git helper scripts I've found <https://github.com/unixorn/git-extra-commands>`_

Version control
---------------

* `Little git extras <https://github.com/tj/git-extras>`_
* `tiny CLI script that generates a .gitignore file for your projects <https://github.com/TejasQ/add-gitignore>`_

Process control, power management, memory
-----------------------------------------

* htop #apt
* `Coreutils Progress Viewer <https://github.com/Xfennec/progress>`_
* `Atop is an ASCII full-screen performance monitor for Linux that is capable of reporting the activity of all processes, daily logging of system and process activity for long-term analysis, highlighting overloaded system resources by using colors, etc <https://www.atoptool.nl/>`_
* `PowerTOP is a Linux* tool used to diagnose issues with power consumption and power management <https://github.com/fenrus75/powertop>`_
* ncdu  #apt

Virtualization
--------------

* VirtualBox  #apt
* Docker
* vagrant

Backups
-------

* restic #apt
* dupfiles #app

Software development
--------------------

* `cloc counts blank lines, comment lines, and physical lines of source code in many programming languages <https://github.com/AlDanial/cloc>`_
* meld

Text editors / IDEs:

* geany
* eclipse / Netbeans
* WingIDE
* Sublime Text
* vim

Compilers:

* C → llvm/clang
* C → gcc
* C# → MonoDevelop
* go → go
* Java → JRE, SunJDK java or openJDK
* python3

  * pypy
  * (optional) ipython
  * (optional) glade
  * python packages:

    * pylint
    * pep8
    * numpy
    * pygments
    * lxml

* perl
* clojure → leiningen
* io
* Haskell → ghc [Glasgow Haskell Compiler]
* Pascal → fpc [free pascal compiler]
* ruby → ruby and irb
* scala
* Algol → a68g [algol68g]
* lua → lua5.3 and löve

Device management
-----------------

* btrfs
* gparted

Presentations
-------------

* impressive
* arandr
* pdfpc
* `inkscapeslide <https://github.com/abourget/inkscapeslide>`_

File formats
------------

* `xsv is a command line program for indexing, slicing, analyzing, splitting and joining CSV files <https://github.com/BurntSushi/xsv>`_
* jq  #apt
* `bcal (Byte CALculator) is a REPL CLI utility for storage expression evaluation, unit conversion and address calculation <https://github.com/jarun/bcal>`_
* pandoc

Office
------

* PDF

  * Adobe Reader
  * xournal
  * pdftk
  * qpdf

* texlive
* LuaTeX, ConTeXt
* LibreOffice

Multimedia
----------

* `Quick and simple image processing at the command line <https://github.com/oguzhaninan/korkut>`_ using imagemagick and advanced selectors
* `youtube-dl to download videos <https://github.com/ytdl-org/youtube-dl>`_

Music
~~~~~

* Audacity
* VLC Media Player

Images and Animation
~~~~~~~~~~~~~~~~~~~~

* GIMP, Photoshop, krita, Pencil2D
* Pencil [prototyping], Dia Diagram Editor
* Inkscape
* Agave [color combinations]
* FontForge
* Scribus
* Blender
* xia: Convert svg to html5 interactive pictures  #apt

Video
~~~~~

* OpenShot
* kdenlive

Mathematics
-----------

* GeoGebra
* sagemath
* Mathematica

Games
-----

Linux
~~~~~

* Frozen Bubble
* Tetris
* Chess
* Mines
* Armagetron Advanced
* jvgs
* starpusher
* gbrainy
* SuperTux 2
* Teeworlds

Windows
~~~~~~~

* C&C Generals Zero Hour
* Black Hawk Down
* Unreal Tournament
* Minesweeper

Checklist
---------

Browser
~~~~~~~

* Quick Search set up?
* Browser does not close tabs
* Browser forgets privacy-relevant data
* If required, hate yourself for installing a Flash plugin

Devices
~~~~~~~

* USB sticks are detected
* internet setup is stable?
* Audio input/output works?

Keyboard setup
~~~~~~~~~~~~~~

You can switch between the following keyboard layouts:

* Austrian
* Neo2
* Japanese

Security model
~~~~~~~~~~~~~~

* Always lock your screen before leaving your computer
* Sensible data must only be stored encrypted (also backups!)
* Your passwords are stored in a password manager - in case of emergency, your most trustworthy friend can access it
* Enable other people to communicate over a secure channel with you
* Always keep your software stack up to date
