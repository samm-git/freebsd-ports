PORTNAME=	lft
PORTVERSION=	3.91
PORTREVISION=	1
PORTEPOCH=	2
CATEGORIES=	net
MASTER_SITES=	http://pwhois.org/get/

MAINTAINER=	farrokhi@FreeBSD.org
COMMENT=	Layer 4 Traceroute program
WWW=		https://pwhois.org/lft/

LICENSE=	VOSTROM
LICENSE_NAME=	VOSTROM
LICENSE_FILE=	${WRKSRC}/COPYING
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror auto-accept

GNU_CONFIGURE=	yes

PLIST_FILES=	sbin/lft bin/whob share/man/man8/lft.8.gz share/man/man8/whob.8.gz
PORTDOCS=	CHANGELOG README TODO

OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lft ${STAGEDIR}${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/whob ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/lft.8 ${STAGEDIR}${PREFIX}/share/man/man8
	${INSTALL_MAN} ${WRKSRC}/whob.8 ${STAGEDIR}${PREFIX}/share/man/man8

do-install-DOCS-on:
	${INSTALL} -d ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
