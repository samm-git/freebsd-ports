PORTNAME=	ipv6gen
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	net-mgmt

MAINTAINER=	vlada@devnull.cz
COMMENT=	IPv6 prefix generator
WWW=		https://github.com/vladak/ipv6gen/wiki/IPv6-prefix-generator

LICENSE=	GPLv2

NO_BUILD=
USES=		perl5 shebangfix
USE_PERL5=	run
SHEBANG_FILES=	ipv6gen.pl check-overlap.pl
PLIST_FILES=	bin/ipv6gen bin/check-overlap share/man/man1/ipv6gen.1.gz
USE_GITHUB=	yes
GH_ACCOUNT=	vladak

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ipv6gen.pl ${STAGEDIR}${PREFIX}/bin/ipv6gen
	${INSTALL_SCRIPT} ${WRKSRC}/check-overlap.pl ${STAGEDIR}${PREFIX}/bin/check-overlap
	${INSTALL_MAN} ${WRKSRC}/ipv6gen.1 ${STAGEDIR}${PREFIX}/share/man/man1/ipv6gen.1

.include <bsd.port.mk>
