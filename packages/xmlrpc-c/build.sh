TERMUX_PKG_HOMEPAGE=http://xmlrpc-c.sourceforge.net
TERMUX_PKG_DESCRIPTION="XML-RPC for C and C++"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.51.06
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/xmlrpc-c/files/Xmlrpc-c%20Super%20Stable/1.51.06/xmlrpc-c-${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=2ec92444d386440a4e276425c23a7a89dd9768f2c993c71f965e38c8e2101e92
TERMUX_PKG_BUILD_DEPENDS="libtool"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--prefix=$PREFIX
--mandir=$PREFIX/share/man
--disable-libxml2-backend
--disable-cgi-server
--disable-libwww-client
--disable-wininet-client
--enable-cplusplus
"
