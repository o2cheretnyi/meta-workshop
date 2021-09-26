SUMMARY = "How to add extra application build (i.e. hello world app)"

S = "${WORKDIR}/git"

SRC_URI = "git://github.com/o2cheretnyi/edu-utils.git;branch=main \
	file://0001-hello-set-proper-greeting-for-hello-image.patch"
LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=75c9ea81473bee4ad894a26bd2da573d"

SRCREV = "main"

do_compile() {
	${CC} ${CFLAGS} ${LDFLAGS} ${S}/hello/main.c -o ${S}/hello/helloworld
}

do_install() {
	install -d ${D}${sbindir}
	install -m 755 ${B}/hello/helloworld ${D}${sbindir}
}

FILES_${PN} = "${sbindir}/helloworld"
