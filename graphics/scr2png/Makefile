PORTNAME=	scr2png
PORTVERSION=	1.2
PORTREVISION=	9
CATEGORIES=	graphics
MASTER_SITES=	LOCAL/nik

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Converts the output of "vidcontrol -p" to PNG

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libgd.so:graphics/gd

NO_WRKSUBDIR=	yes
USES=		uidfix
MAKE_ARGS=	BINDIR=${PREFIX}/bin SHAREDIR=${PREFIX}/share

PLIST_FILES=	bin/scr2png share/man/man1/scr2png.1.gz

pre-patch:
	@${REINPLACE_CMD} -e 's|/usr/local|${LOCALBASE}|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|<gd/gd\.h>|<gd.h>|' ${WRKSRC}/scr2png.c

.include <bsd.port.mk>
