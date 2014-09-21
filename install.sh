#!/bin/bash

echo "[Vagrant Box] Run OPAM initialization -----------------------------------"
opam init -y
eval `opam config env`
echo ". /home/vagrant/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true" >> ~/.bashrc
echo "let () = try Topdirs.dir_directory (Sys.getenv "OCAML_TOPLEVEL_PATH") with Not_found -> ();;" >> ~/.ocamlinit

echo "[Vagrant Box] Install utop ----------------------------------------------"
opam install utop -y
eval `opam config env`

echo "[Vagrant Box] Install Merlin --------------------------------------------"
opam install merlin -y
eval `opam config env`

echo "[Vagrant Box] Install Tuareg ---------------------------------------------"
git clone https://github.com/ocaml/tuareg.git ~/tuareg

echo "[Vagrant Box] create .emacs ---------------------------------------------"
cp /vagrant/cfg.emacs ~/.emacs

echo "[Vagrant Box] Done, have fun! :)"
