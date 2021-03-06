# This file contains logic to ease porting of Go packages or binaries using
# the `go` command.
# You can set the following variables to control the process.
#
# GO_PKGNAME
#	The name of the package. This is the directory that will be
# 	created in GOPATH/src and seen by the `go` command
#
# GO_TARGET
#	The names of the package(s) to build
#
# CGO_CFLAGS
#	Addional CFLAGS variables to be passed to the C compiler by the `go`
#	command
#
# CGO_LDFLAGS
#	Addional LDFLAGS variables to be passed to the C compiler by the `go`
#	command

.if ${ARCH} == "i386"
GOARCH=	386
GOOBJ=	8
.else
GOARCH=	amd64
GOOBJ=	6
.endif

# Settable variables
GO_PKGNAME?=	${PORTNAME}
GO_TARGET?=	${GO_PKGNAME}
CGO_CFLAGS+=	-I${LOCALBASE}/include
CGO_LDFLAGS+=	-L${LOCALBASE}/lib

# Read-only variables
GO_CMD=		${LOCALBASE}/bin/go
GOROOT=		${LOCALBASE}/go
GO_LIBDIR=	go/pkg/freebsd_${GOARCH}
GO_SRCDIR=	go/src/pkg
GO_LOCAL_LIBDIR=${LOCALBASE}/${GO_LIBDIR}
GO_LOCAL_SRCDIR=${LOCALBASE}/${GO_SRCDIR}
GO_WRKSRC=	${GO_WRKDIR_SRC}/${GO_PKGNAME}
GO_WRKDIR_BIN=	${WRKDIR}/bin
GO_WRKDIR_SRC=	${WRKDIR}/src
GO_WRKDIR_PKG=	${WRKDIR}/pkg/freebsd_${GOARCH}

BUILD_DEPENDS+=	${GO_CMD}:${PORTSDIR}/lang/go
GO_ENV+=	GOROOT=${GOROOT}	\
		GOPATH=${WRKDIR}	\
		GOARCH=${GOARCH}	\
		GOOS=${OPSYS:L}		\
		CGO_CFLAGS="${CGO_CFLAGS}" \
		CGO_LDFLAGS="${CGO_LDFLAGS}"
PLIST_SUB+=	GO_LIBDIR=${GO_LIBDIR}	\
		GO_SRCDIR=${GO_SRCDIR}	\
		GO_PKGNAME=${GO_PKGNAME}

.if !target(post-extract)
post-extract:
	@${MKDIR} ${GO_WRKSRC:H}
	@${LN} -sf ${WRKSRC} ${GO_WRKSRC}
.endif

.if !target(do-build)
do-build:
	@(cd ${GO_WRKSRC}; ${SETENV} ${GO_ENV} ${GO_CMD} install ${GO_TARGET})
.endif
