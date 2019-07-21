# lbry_generic_linux_install

Generic script to install LBRY in linux
this might also work in other unix-type systems (like BSD's).

## Dependencies

  1. dpkg-deb - just to extract
  1. any dependencie listed here: https://github.com/lbryio/lbry-desktop

## How to use this script

~~~Bash
git clone https://github.com/fcolecumberri/lbry_generic_linux_install
cd lbry_generic_linux_install
chmod +x lbry_generic_linux_install.sh
./lbry_generic_linux_install.sh
~~~

## Important notes

At some point the system will list the run-time dependencies of LBRY
just read them and be sure those are installed (or any equivalent).

Once LBRY is compiles, it will try to install them using `sudo` command
so you will need to be sudoer and give your password.

## License

Since LBRY is in MIT, I used MIT (as described in the LICENSE file).
