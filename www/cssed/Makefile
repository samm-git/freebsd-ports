PORTNAME=	cssed
PORTVERSION=	0.4.0
PORTREVISION=	16
CATEGORIES=	www
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Application to help CSS style sheets creation and maintenance
WWW=		https://cssed.sourceforge.net/

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

BROKEN=		Not compatible with Python 3.x
DEPRECATED=	Abandonware and broken, doesn't work with Python 3.x
EXPIRATION_DATE=2024-05-31

USES=		compiler:c++11-lang dos2unix gettext gnome localbase pathfix \
		pkgconfig
DOS2UNIX_FILES=	scintilla/gtk/ScintillaGTK.cxx
USE_GNOME=	gtk20 libxml2
GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=${PREFIX}/share
CONFIGURE_ARGS=	--with-plugin-headers

CXXFLAGS+=	-Wno-c++11-narrowing

DESKTOP_ENTRIES="CSSED" "CSS Editor" "${DATADIR}/pixmaps/cssed-icon.png" \
		"${PORTNAME}" "GTK;Development;WebDevelopment;TextEditor;" ""

post-patch:
	@${REINPLACE_CMD} -e \
		's|gthread-2.0|gmodule-2.0|' ${WRKSRC}/configure
.for i in scintilla/gtk/Makefile.in src/Makefile.in
	@${REINPLACE_CMD} -e 's|gcc|@CC@|g ; \
		 s|g++|@CXX@|g' ${WRKSRC}/${i}
.endfor

.include <bsd.port.mk>
