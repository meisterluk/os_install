Operating system installation
=============================

:author:        meisterluk
:base-system:   current xubuntu
:lastchange:    2018.05.06


TODO rsync?

Software selection
------------------

* backups → restic
* shell → zsh (with grml's configuration)
* printing → printer drivers?

Modern command line tools
~~~~~~~~~~~~~~~~~~~~~~~~~

* ack-grep
TODO

Network & Security
~~~~~~~~~~~~~~~~~~

* Wireshark
* gnupg2
* KeePassX
* Network manager

  * (optional) network-manager-openconnect-gnome
  * (optional) network-manager-pptp-gnome
  * (optional) network-manager-vpnc

* (optional) nmap

Device management
~~~~~~~~~~~~~~~~~

* btrfs
* gparted

Presentations
~~~~~~~~~~~~~

* impressive
* arandr

Browser
~~~~~~~

* Mozilla Firefox or Waterfox, with addons

  * Privacy badger
  * ghostery
  * uBlock Origin

* Google Chromium or Chrome
* Torbrowser
* Beaker browser

Communication
~~~~~~~~~~~~~

* pidgin

  * IRC
  * Jabber with OTR

* Signal
* (optional) mumble?

Music
~~~~~

* Audacity
* VLC Media Player

Office
~~~~~~

* PDF

  * Adobe Reader
  * xournal
  * pdftk
  * qpdf
  * (optional) pdfedit [if available in debian repo]

* texlive
* LuaTeX, ConTeXt
* LibreOffice
* pandoc

Images and Animation
~~~~~~~~~~~~~~~~~~~~

* GIMP, Photoshop, krita, Pencil2D
* Pencil [prototyping], Dia Diagram Editor
* Inkscape and `inkscapeslide <https://github.com/abourget/inkscapeslide>`_
* Agave [color combinations]
* (optional) FontForge
* (optional) Scribus
* (optional) Blender
* (optional) xia

Video
~~~~~

* OpenShot
* kdenlive

Virtualization
~~~~~~~~~~~~~~

* VirtualBox
* Docker
* (optional) vagrant

Software development
~~~~~~~~~~~~~~~~~~~~

* jq
* GNU make
* git
* meld
* text editors / IDEs

  * geany
  * eclipse / Netbeans
  * WingIDE
  * Sublime Text
  * vim

* compilers

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

Mathematics
~~~~~~~~~~~

* GeoGebra
* sagemath
* (optional) Mathematica

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
