PORTNAME=	scandir
PORTVERSION=	1.10.0
PORTREVISION=	2
CATEGORIES=	sysutils python
MASTER_SITES=	PYPI
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Fast and featureful directory iterator
WWW=		https://github.com/benhoyt/scandir

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		python
USE_PYTHON=	autoplist concurrent distutils

post-install:
	${FIND} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR} -name '*.so' -exec ${STRIP_CMD} {} +

do-test:
	${SETENV} ${TEST_ENV} ${PYTHON_CMD} ${WRKSRC}/test/run_tests.py

.include <bsd.port.mk>
