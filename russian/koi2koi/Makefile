PORTNAME=	koi2koi
PORTVERSION=	1998.04.16
PORTREVISION=	1
CATEGORIES=	russian converters
MASTER_SITES=	#
DISTFILES=	#

MAINTAINER=	marck@FreeBSD.org
COMMENT=	Cyrillic charset auto converter

NO_WRKSUBDIR=	yes

USES=		uidfix
MAKEFILE=	${PKGDIR}/src/Makefile
MAKE_ENV=	PKGDIR="${PKGDIR}"

PLIST_FILES=	bin/koi2koi \
		share/man/man1/koi2koi.1.gz

.include <bsd.port.mk>
