#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install emacs24 -y
sudo apt-get install git -y
sudo apt-get install curl build-essential m4 zlib1g-dev libssl-dev ocaml ocaml-native-compilers opam -y
opam init -y
eval `opam config env`
echo ". /home/vagrant/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true" >> ~/.bashrc
echo "let () = try Topdirs.dir_directory (Sys.getenv "OCAML_TOPLEVEL_PATH") with Not_found -> ();;" >> ~/.ocamlinit
opam install utop -y
