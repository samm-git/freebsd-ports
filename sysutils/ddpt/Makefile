PORTNAME=	ddpt
PORTVERSION=	0.97
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	http://sg.danny.cz/sg/p/

MAINTAINER=	delphij@FreeBSD.org
COMMENT=	dd tool that specializes in files that are block devices
WWW=		https://sg.danny.cz/sg/ddpt.html

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gmake tar:tgz
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=	${PREFIX}/share

PLIST_FILES=	bin/ddpt
PLIST_FILES+=	bin/ddptctl
PLIST_FILES+=	bin/ddpt_sgl
PLIST_FILES+=	share/man/man8/ddpt.8.gz
PLIST_FILES+=	share/man/man8/ddptctl.8.gz
PLIST_FILES+=	share/man/man8/ddpt_sgl.8.gz

.include <bsd.port.mk>
