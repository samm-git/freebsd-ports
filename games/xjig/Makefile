PORTNAME=	xjig
PORTVERSION=	2.4
PORTREVISION=	6
CATEGORIES=	games
MASTER_SITES=	XCONTRIB/games

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Jigsaw puzzle game for X11

USES=		compiler tar:tgz xorg
USE_CXXSTD=	c++14
USE_XORG=	x11 xorgproto xext
MAKEFILE=	Makefile.Linux
PLIST_FILES=	bin/xjig share/man/man1/xjig.1.gz

.include <bsd.port.pre.mk>

post-patch:
.if ${COMPILER_TYPE} == clang
	@${REINPLACE_CMD} 's|-fpcc-struct-return||' ${WRKSRC}/Makefile.Linux
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xjig ${STAGEDIR}${PREFIX}/bin/xjig
	${INSTALL_MAN} ${WRKSRC}/xjig.man ${STAGEDIR}${PREFIX}/share/man/man1/xjig.1

.include <bsd.port.post.mk>
