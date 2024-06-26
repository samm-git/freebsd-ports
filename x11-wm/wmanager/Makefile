PORTNAME=	wmanager
PORTVERSION=	0.3.1
CATEGORIES=	x11-wm
MASTER_SITES=	https://devel.ringlet.net/files/x11/wmanager/

MAINTAINER=	bofh@FreeBSD.org
COMMENT=	X11 window manager selector
WWW=		https://devel.ringlet.net/files/x11/wmanager/

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libfltk.so:x11-toolkits/fltk \
		libfontconfig.so:x11-fonts/fontconfig

USES=		gl gmake pkgconfig tar:xz xorg
USE_GL=		gl glu
USE_XORG=	x11 xcursor xext xfixes xft xinerama xrender


OPTIONS_DEFINE=	ADDONS DOCS EXAMPLES
OPTIONS_DEFAULT=ADDONS
OPTIONS_SUB=	yes

ADDONS_DESC=		Install the helper scripts and manpages
ADDONS_RUN_DEPENDS=	wmanager-loop:x11-wm/wmanager-addons

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmanager ${STAGEDIR}${PREFIX}/bin

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for file in FAQ HISTORY INSTALL NEWS README TODO
	${INSTALL_DATA} ${WRKSRC}/${file} ${STAGEDIR}${DOCSDIR}
.endfor

do-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/.wmanagerrc ${STAGEDIR}${EXAMPLESDIR}/wmanagerrc_sample
	${INSTALL_DATA} ${WRKSRC}/.xinitrc ${STAGEDIR}${EXAMPLESDIR}/xinitrc_sample

.include <bsd.port.mk>
