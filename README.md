OCaml Development Box
=====================

[![ocaml](colour-logo.png)](http://ocaml.org)

> _**Setup your OCaml development environment in a matter of minutes.**_

Use Vagrant to set up a virtual machine with everything you need to develop using the [OCaml](http://ocaml.org) language.
All you have to do is copy-paste a few commands detailed below and you'll be ready to go.

Requirements
------------

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com)

How To
------

1. git clone https://github.com/dtoma/xenial64-ocaml-bap-box.git
2. cd xenial64-ocaml-bap-box
3. vagrant up (*create the virtual machine from the Vagrantfile*)
4. vagrant ssh (*connect to the virtual machine*)

OS
--

[Ubuntu 16.04.1 LTS](http://releases.ubuntu.com/16.04/) (Xenial Xerus) - 64 bits.

OCaml
-----

* [OCaml](http://ocaml.org)
* [OPAM](http://opam.ocaml.org) (OCaml Package Manager)
* [utop](https://github.com/diml/utop) (a universal toplevel for OCaml)
* [bap](https://github.com/BinaryAnalysisPlatform/bap) (Binary Analysis Platform)

Editor
------

* [Emacs 24](http://www.gnu.org/software/emacs/)
* [Spacemacs](https://github.com/syl20bnr/spacemacs) 

Misc
----

[Git](http://git-scm.com)

Thanks
------

[Great tutorial from Jane Street](https://github.com/realworldocaml/book/wiki/Installation-Instructions)

This is a good read even if you use this box to setup your development environment,
in order to understand how OCaml is installed.

[BAP Blog](https://binaryanalysisplatform.github.io/) 

Full of useful information.
Have fun!
