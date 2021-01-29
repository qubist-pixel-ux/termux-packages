TERMUX_PKG_HOMEPAGE=http://xmlrpc-c.sourceforge.net
TERMUX_PKG_DESCRIPTION="XML-RPC for C and C++"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.51.06
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/xmlrpc-c/files/Xmlrpc-c%20Super%20Stable/1.51.06/xmlrpc-c-${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=06dcd87d9c88374559369ffbe83b3139cf41418c1a2d03f20e08808085f89fd0
TERMUX_PKG_BUILD_DEPENDS="libtool, pkg-config, openssl"
TERMUX_PKG_DEPENDS="curl"

termux_step_configure() {
	local ARCH
	# Copy cross_config for target architecture.
	case $TERMUX_ARCH in
		aarch64) ARCH=arm64 ;;
		arm)     ARCH=armv7l;;
		i686)    ARCH=i686;;
		x86_64)  ARCH=x86_64;;
		*)       termux_error_exit "Unsupported arch: $TERMUX_ARCH" ;;
	esac
	
	$TERMUX_PKG_SRCDIR/configure \
	--prefix=$PREFIX \
	--mandir=$PREFIX/share/man \
	--disable-libxml2-backend \
	--disable-cgi-server \
	--disable-libwww-client \
	--disable-wininet-client \
	--enable-cplusplus \
	--host=${TERMUX_HOST_PLATFORM} \
	--build=${ARCH}
}
