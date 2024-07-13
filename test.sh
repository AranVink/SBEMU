. /opt/djgpp/setenv
make clean
rm -rf output
rm SBEMU-FD13-USB.img.xz
rm SBEMU-FD13-USB.img
rm SBEMU.zip
make -j
./scripts/build-release-artifacts.sh  output/sbemu.exe CHANGELOG.txt .
xz -d SBEMU-FD13-USB.img.xz
dosbox-x -c "imgmount C: SBEMU-FD13-USB.img/SBEMU-FD13-USB.img" -c "boot C:"