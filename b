source /opt/simba/1.6/environment-setup-armv7a-vfp-neon-poky-linux-gnueabi
make espresso3250_canonical_defconfig
unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE

if [ "$1" == 'd' ]
then
echo build DEBUG
make -j4 CONFIG_SAMSUNG_OSKA_DEBUG=y CONFIG_S5N2230_CM_DEBUG=y CONFIG_S5N2230_DEBUG=y
else
make
fi
