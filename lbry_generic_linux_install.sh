#! /usr/bin/bash
# with ❤ from Francisco Lecumberri to the LBRY community

BASE_DIR=$(pwd)
git clone https://github.com/lbryio/lbry-desktop
cd lbry-desktop
yarn
yarn build
cd dist/electron
mkdir install_dir
dpkg-deb -R LBRY_0.34.0-rc.5.deb install_dir
echo "This instalation script asumes you have installed the correct dependencies installed in order to run LBRY, the current dependencies are:"
echo ""
grep "Depends: " "install_dir/DEBIAN/control"
echo ""
echo "the current script won't install them, so please be sure those are installed before running lbry"
sudo cp -r install_dir/usr/. /usr
sudo cp -r install_dir/opt/. /opt
sudo ln -s /opt/LBRY/LBRY /usr/local/bin/LBRY
cd $BASE_DIR
rm -rf lbry-desktop
