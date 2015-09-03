SRCREV = "790ec43bc858cda4b49c5f561de628dd2934b7ee"

PR = "r20"

do_install_append () {
    install -d ${D}${sysconfdir}/glsdkstatcoll
    install -m 0644 ${S}/bandwidth-tool/config.ini ${D}${sysconfdir}/glsdkstatcoll/.
    install -m 0644 ${S}/bandwidth-tool/initiators.cfg ${D}${sysconfdir}/glsdkstatcoll/.
}

FILES_${PN} += "${sysconfdir}/glsdkstatcoll/*"
