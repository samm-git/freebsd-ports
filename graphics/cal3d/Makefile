PORTNAME=	cal3d
PORTVERSION=	0.11.1	# see note below
PORTREVISION=	1
CATEGORIES=	graphics devel
MASTER_SITES=	LOCAL/acm/cal3d
DISTNAME=	cal3d-20060720
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	acm@FreeBSD.org
COMMENT=	Skeletal based 3D character animation library written in C++
WWW=		http://gna.org/projects/cal3d/

# Cal3D ceased development in July 2006
# The last version was labelled 0.11R2 (despite version 0.11 being released)
# The last Cal3D development version was "20060720".
# This becomes the new "stable" version, and it's given a fake version
# number of 0.11.1 to indicate it comes after 0.11.0 rather than changing
# the version scheme completely.

USES=		autoreconf compiler:c++11-lang libtool pathfix pkgconfig \
		tar:bzip2
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=	${PREFIX}/share

INSTALL_TARGET=	install-strip

post-patch:
	@${REINPLACE_CMD} -e 's|<istream>|<iostream>|' \
		${WRKSRC}/src/cal3d/buffersource.h \
		${WRKSRC}/src/cal3d/loader.h \
		${WRKSRC}/src/cal3d/streamsource.h
	@${REINPLACE_CMD} -e '/^all_libraries/d' \
		${WRKSRC}/src/cal3d/Makefile.am

.include <bsd.port.mk>
