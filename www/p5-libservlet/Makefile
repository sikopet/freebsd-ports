# Created by: ijliao
# $FreeBSD$

PORTNAME=	libservlet
PORTVERSION=	0.9.2
CATEGORIES=	www perl5
MASTER_SITES=	SF
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Servlet API for Perl

BUILD_DEPENDS=	p5-Exception-Class>=0:${PORTSDIR}/devel/p5-Exception-Class
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Servlet.3 \
	Servlet::Config.3 \
	Servlet::Http::Cookie.3 \
	Servlet::Http::HttpServlet.3 \
	Servlet::Http::HttpServletRequest.3 \
	Servlet::Http::HttpServletRequestWrapper.3 \
	Servlet::Http::HttpServletResponse.3 \
	Servlet::Http::HttpServletResponseWrapper.3 \
	Servlet::Http::HttpSession.3 \
	Servlet::Http::HttpSessionActivationListener.3 \
	Servlet::Http::HttpSessionAttributesListener.3 \
	Servlet::Http::HttpSessionBindingEvent.3 \
	Servlet::Http::HttpSessionBindingListener.3 \
	Servlet::Http::HttpSessionEvent.3 \
	Servlet::Http::HttpSessionListener.3 \
	Servlet::Util::Event.3 \
	Servlet::Util::Exception.3 \
	Servlet::Util::Principal.3 \
	Servlet::Filter.3 \
	Servlet::FilterChain.3 \
	Servlet::FilterConfig.3 \
	Servlet::GenericServlet.3 \
	Servlet::RequestDispatcher.3 \
	Servlet::Servlet.3 \
	Servlet::ServletConfig.3 \
	Servlet::ServletContext.3 \
	Servlet::ServletContextAttributeEvent.3 \
	Servlet::ServletContextAttributeListener.3 \
	Servlet::ServletContextEvent.3 \
	Servlet::ServletContextListener.3 \
	Servlet::ServletException.3 \
	Servlet::ServletInputStream.3 \
	Servlet::ServletOutputStream.3 \
	Servlet::ServletRequest.3 \
	Servlet::ServletRequestWrapper.3 \
	Servlet::ServletResponse.3 \
	Servlet::ServletResponseWrapper.3 \
	Servlet::SingleThreadModel.3 \
	Servlet::UnavailableException.3 \

NO_STAGE=	yes
.include <bsd.port.mk>
