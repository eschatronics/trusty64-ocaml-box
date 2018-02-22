#!/bin/bash

INSTALL="sudo apt-get install -y"

sudo apt-get update
sudo apt-get upgrade -y
${INSTALL} emacs24-nox git cmake make gcc gdb curl build-essential m4 zlib1g-dev \
  libssl-dev ocaml ocaml-native-compilers opam opam-docs binutils-multiarch \
  libgmp-dev zlib1g-dev debianutils llvm-3.8-dev clang libzip-dev pkg-config


cat>~vagrant/opamsetup.sh<<EOF
function refresh () { eval `opam config env`; }
grep 'eval `opam config env`' ~vagrant/.envvars || echo 'eval `opam config env`' >> ~vagrant/.envvars

function oinst () {
  echo "[Vagrant Box] Install \$1 --------------------------------------------"
  opam install \$1 -y && refresh
}

##### set up spacemacs #####
cd ~
git clone https://github.com/syl20bnr/spacemacs .emacs.d

echo "[Vagrant Box] Run OPAM initialization -----------------------------------"
opam init -y && refresh
opam upgrade && refresh
opam switch 4.03.0 && refresh
echo ". /home/vagrant/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true" >> ~/.bashrc
echo "let () = try Topdirs.dir_directory (Sys.getenv \"OCAML_TOPLEVEL_PATH\") with Not_found -> ();;" >> ~/.ocamlinit

for p in utop.1.19.3 merlin core bap; do
  oinst \$p
done

echo "[Vagrant Box] Done, have fun! :)"
EOF
su vagrant -c "bash ~vagrant/opamsetup.sh"
