PORTNAME=	ibp
PORTVERSION=	0.21
PORTREVISION=	3
CATEGORIES=	comms hamradio
MASTER_SITES=	http://wwwhome.cs.utwente.nl/~ptdeboer/ham/ \
		LOCAL/db

MAINTAINER=	hamradio@FreeBSD.org
COMMENT=	Little program for monitoring amateur radio beacons
WWW=		http://wwwhome.cs.utwente.nl/~ptdeboer/ham/ibp.html

USES=		imake ncurses tar:tgz xorg
USE_XORG=	x11

post-patch:
	${REINPLACE_CMD} -e 's|-lcurses|-lncurses|' ${WRKSRC}/Imakefile \
		${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ibp ${STAGEDIR}${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/ibp.1 ${STAGEDIR}${PREFIX}/share/man/man1/ibp.1

.include <bsd.port.mk>
