PORTNAME=	tcc
DISTVERSIONPREFIX=	release_
DISTVERSION=	0_9_26
PORTREVISION=	7
CATEGORIES=	lang

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tiny C Compiler
WWW=		https://github.com/TinyCC/tinycc

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING

PORTSCOUT=	skipv:initial

ONLY_FOR_ARCHS=	amd64 i386

USE_GITHUB=	yes
GH_ACCOUNT=	TinyCC
GH_PROJECT=	tinycc

USES=		gmake makeinfo perl5
USE_PERL5=	build
HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix="${PREFIX}" --cc="${CC}"
MAKE_ARGS=	CONFIG_NOLDL=1

OPTIONS_DEFINE=	DOCS EXAMPLES

INFO=		tcc-doc
PORTDOCS=	Changelog README TODO VERSION

.include <bsd.port.options.mk>

.if ${ARCH} == "amd64"
CONFIGURE_ARGS+=--cpu=x86-64 --extra-cflags="-DTCC_TARGET_X86_64 -DONE_SOURCE"
MAKE_ARGS+=	ARCH=x86-64
CPUTYPE=	x86_64
FILES=		bcheck.o alloca86_64.o libtcc1.o

PLIST_SUB+=	AMD64=""
.else
PLIST_SUB+=	AMD64="@comment "
.endif

.if ${ARCH} == "i386"
CPUTYPE=	i386
FILES=		bcheck.o alloca86.o alloca86-bt.o

PLIST_SUB+=	I386=""
.else
PLIST_SUB+=	I386="@comment "
.endif

CFLAGS+=	-fheinous-gnu-extensions

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/tcc
	${INSTALL_DATA} ${WRKSRC}/tcc-doc.info ${STAGEDIR}${PREFIX}/${INFO_PATH}
.for f in ${FILES}
	${INSTALL_DATA} ${WRKSRC}/lib/${CPUTYPE}/*.o ${STAGEDIR}${PREFIX}/lib/tcc
.endfor

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

post-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
