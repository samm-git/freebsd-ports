PORTNAME=	Structures_DataGrid_Renderer_Smarty
PORTVERSION=	0.1.5
CATEGORIES=	www pear

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Smarty Renderer for pear-Structures_DataGrid
WWW=		https://pear.php.net/package/Structures_DataGrid_Renderer_Smarty

DEPRECATED=	Last release in 2010, depends on expired www/smarty2
EXPIRATION_DATE=2024-06-04

RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:devel/pear-Structures_DataGrid@${PHP_FLAVOR} \
		${LOCALBASE}/share/smarty/Smarty.class.php:www/smarty2@${PHP_FLAVOR} \
		${PEARDIR}/Structures/DataGrid/Renderer/Pager.php:www/pear-Structures_DataGrid_Renderer_Pager@${PHP_FLAVOR}

USES=		pear

.include <bsd.port.mk>
