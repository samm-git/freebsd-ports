PORTNAME=	smplayer-themes
PORTVERSION=	20.11.0
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	multimedia audio kde
MASTER_SITES=	SF/smplayer/SMPlayer-themes/${PORTVERSION}/

MAINTAINER=	vvd@FreeBSD.org
COMMENT=	Themes for SMPlayer
WWW=		https://www.smplayer.info/

USES=		qt:5 tar:bzip2
USE_QT=		buildtools:build

DATADIR=	${PREFIX}/share/smplayer

BINARY_ALIAS=	rcc=${RCC}

NO_ARCH=	yes

PORTDOCS=	Changelog README.txt
OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
