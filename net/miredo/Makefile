PORTNAME=	miredo
PORTVERSION=	1.2.6
PORTREVISION=	7
CATEGORIES=	net
MASTER_SITES=	http://www.remlab.net/files/miredo/archive/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Opensource Teredo (IPv6 tunneling) implementation
WWW=		https://www.remlab.net/miredo/

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libJudy.so:devel/judy

USES=		cpe libtool localbase tar:xz
GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=${PREFIX}/share
CONFIGURE_ARGS=	--localstatedir=/var --enable-examplesdir=${EXAMPLESDIR}
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip

USE_RC_SUBR=	miredo-server miredo

OPTIONS_DEFINE=	POLICYTABLE NLS
OPTIONS_SUB=	yes

NLS_USES=		gettext iconv
NLS_CONFIGURE_ENABLE=	nls
POLICYTABLE_DESC=	Install policy table to support teredo

post-install-POLICYTABLE-on:
	${INSTALL_DATA} ${FILESDIR}/ip6addrctl.conf /etc

.include <bsd.port.mk>
