PACKAGECONFIG[wayland] = "--enable-wayland-compositor,--disable-wayland-compositor,libgbm"

SRC_URI_append  = "file://weston.ini \
		   file://0001-support-for-surface-positioning-added.patch \
"

PR_append = "-arago11"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
