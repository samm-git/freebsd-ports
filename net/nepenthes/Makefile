PORTNAME=	nepenthes
PORTVERSION=	0.2.2
PORTREVISION=	18
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/Nepenthes%20development/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Determine the malware activity on a network
WWW=		http://nepenthes.carnivore.it/

DEPRECATED=	Abandonware, last update in 2008 and upstream is gone.
EXPIRATION_DATE=2024-05-31

LIB_DEPENDS=	libpcre.so:devel/pcre \
		libadns.so:dns/adns \
		libcurl.so:ftp/curl \
		libmagic.so.1:sysutils/file

USES=		dos2unix libtool perl5
USE_CXXSTD=	gnu++98
USE_GCC=	yes
GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=${PREFIX}/share
CONFIGURE_ARGS=	--localstatedir=/var
INSTALL_TARGET=	install-strip

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

OPTIONS_DEFINE=		DEBUG_LOGGING PRELUDE

DEBUG_LOGGING_CONFIGURE_ENABLE=	debug-logging
PRELUDE_LIB_DEPENDS=	libprelude.so:security/libprelude
PRELUDE_CONFIGURE_ENABLE=	prelude

post-patch:
	@${FIND} ${WRKSRC} -name Makefile.in -print0 | ${XARGS} -0 \
		${REINPLACE_CMD} -e \
		's|-Werror|| ; \
		 s|-D.*_GNU_SOURCE||'
	@${FIND} ${WRKSRC}/modules -name "*.[ch]pp" -print0 | ${XARGS} -0 \
		${REINPLACE_CMD} -e \
		'/<curl\/types.h>/d'
	@${REINPLACE_CMD} -e \
		's|-I/usr/local/include|| ; \
		 s|-I/usr/src/contrib/file/|| ; \
		 s|-L/usr/local/lib|| ; \
		 s|-R/usr/local/lib||' ${WRKSRC}/configure

post-install:
	@${MKDIR} ${STAGEDIR}${DATADIR}/signatures \
		${STAGEDIR}/var/binaries \
		${STAGEDIR}/var/hexdumps \
		${STAGEDIR}/var/log/pcap \
		${STAGEDIR}/var/spool/nepenthes/gotek \
		${STAGEDIR}/var/spool/nepenthes/submitpostgres \
		${STAGEDIR}/var/cache/nepenthes/pcap \
		${STAGEDIR}/var/cache/nepenthes/signatures
	(cd ${WRKSRC}/modules/shellcode-signatures && ${INSTALL_DATA} \
		shellcode-signatures.sc ${STAGEDIR}${DATADIR}/signatures)

.include <bsd.port.mk>
