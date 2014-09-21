OCaml Development Box
=====================

[![ocaml](colour-logo.png)](http://ocaml.org)

> _**Setup your OCaml development environment in a matter of minutes.**_

How To
------

1. git clone https://github.com/dtoma/trusty64-ocaml-box.git
2. cd trusty64-ocaml-box
3. vagrant up (*create the virtual machine from the Vagrantfile*)
4. vagrant ssh (*connect to the virtual machine*)
5. sh /vagrant/install.sh (*install additional packages, setup .emacs*)

OS
--

[Ubuntu 14.04.1 LTS](http://releases.ubuntu.com/14.04/) (Trusty Tahr) - 64 bits.

OCaml
-----

* [OCaml](http://ocaml.org)
* [OPAM](http://opam.ocaml.org) (OCaml Package Manager)
* [utop](https://github.com/diml/utop) (a universal toplevel for OCaml)

Editor
------

* [Emacs 24](http://www.gnu.org/software/emacs/)
* [Tuareg](https://github.com/ocaml/tuareg) (an Emacs OCaml mode)
* [Merlin](https://github.com/the-lambda-church/merlin) (Context sensitive completion for OCaml in Vim and Emacs)

Misc
----

[Git](http://git-scm.com)

Thanks
------

[Great tutorial from Jane Street](https://github.com/realworldocaml/book/wiki/Installation-Instructions)

This is a good read even if you use this box to setup your development environment,
in order to understand how OCaml is installed.

Have fun!
