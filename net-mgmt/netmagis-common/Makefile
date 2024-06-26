PORTNAME?=	netmagis
PORTVERSION?=	2.3.6
PORTREVISION=	1
CATEGORIES?=	net-mgmt
MASTER_SITES=	http://netmagis.org/files/
PKGNAMESUFFIX?=	-common

MAINTAINER?=	pdagog@gmail.com
COMMENT?=	Netmagis common infrastructure
WWW=		http://www.netmagis.org/

LICENSE=	CECILL-B
LICENSE_NAME=	CeCILL-B Free Software License Agreement
LICENSE_FILE=	${WRKSRC}/LICENSE
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

RUN_DEPENDS+=	dtplite:devel/tcllib

USES+=		pgsql:11+ tcl
WANT_PGSQL+=	pgtcl

SLAVEDIRS=	net-mgmt/netmagis-common \
	net-mgmt/netmagis-database \
	net-mgmt/netmagis-detecteq \
	net-mgmt/netmagis-metro \
	net-mgmt/netmagis-servers \
	net-mgmt/netmagis-topo \
	net-mgmt/netmagis-utils \
	net-mgmt/netmagis-www

# Variables used in netmagis Makefiles
MAKE_ARGS+=	PREFIX=${PREFIX} TCLSH=${TCLSH} \
		TCLCONF=${TCL_LIBDIR}/tclConfig.sh

.if ${PKGNAMESUFFIX} == -topo || ${PKGNAMESUFFIX} == -www
ALL_TARGET=build${PKGNAMESUFFIX?=}
.else
ALL_TARGET=nothing
NO_ARCH=	yes
.endif

INSTALL_TARGET=	install${PKGNAMESUFFIX}

# Change "cd foo; make" into "$(MAKE) -C foo" to unbreak parallel builds
post-patch:
	@${FIND} ${WRKSRC} -type f -name Makefile -print0 | ${XARGS} -0 \
		${REINPLACE_CMD} -E 's,cd(.+) (;|&&) make,$$(MAKE) -C\1,'
	@${REINPLACE_CMD} -E 's,cd (.+) ; (ln -s en ),\2\1/,' \
		${WRKSRC}/www/Makefile
	${REINPLACE_CMD} '/NMVARDIR/s/$$(PREFIX)//' ${WRKSRC}/Makefile

.include <bsd.port.mk>
