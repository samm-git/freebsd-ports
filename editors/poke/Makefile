PORTNAME=	poke
PORTVERSION=	3.2
PORTREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	GNU

MAINTAINER=	mistresssilvara@hotmail.com
COMMENT=	Scriptable interactive binary editor
WWW=		https://www.jemarch.net/poke

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	help2man:misc/help2man
LIB_DEPENDS=	libgc.so:devel/boehm-gc \
		libjson-c.so:devel/json-c \
		libtextstyle.so:devel/libtextstyle

USES=		gmake libtool pkgconfig readline
USE_LDCONFIG=	yes

GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=${PREFIX}/share

CONFIGURE_ARGS=	--disable-gui
INSTALL_TARGET=	install-strip

INFO=		${PORTNAME}

OPTIONS_DEFINE=	EXAMPLES NLS
OPTIONS_SUB=	yes

NLS_USES=		gettext-runtime
NLS_CONFIGURE_ENABLE=	nls

.include <bsd.port.mk>
