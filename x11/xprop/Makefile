PORTNAME=	xprop
PORTVERSION=	1.2.7
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Property displayer for X

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

EXTRACT_SUFX=	.tar.xz
USES=		xorg xorg-cat:app
USE_XORG=	x11

GNU_CONFIGURE_MANPREFIX=${PREFIX}/share

PLIST_FILES=	bin/xprop share/man/man1/xprop.1.gz

.include <bsd.port.mk>
