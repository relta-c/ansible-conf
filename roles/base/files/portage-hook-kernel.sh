# don't upgrade kernel for now

#post_pkg_postinst() {
#	CURRENT_KV=$(uname -r)
#	# Check to see if genkernel has been run previously for the running kernel and use that config
#	if [[ -f "${EROOT}/etc/kernels/kernel-config-${CURRENT_KV}" ]] ; then
#		genkernel --kernel-config="${EROOT}/etc/kernels/kernel-config-${CURRENT_KV}" all
#	elif [[ -f "${EROOT}/usr/src/linux-${CURRENT_KV}/.config" ]] ; then # Use latest kernel config from current kernel
#		genkernel --kernel-config="${EROOT}/usr/src/linux-${CURRENT_KV}/.config" all
#	elif [[ -f /proc/config.gz ]] ; then # Use known running good kernel
#		zcat /proc/config.gz >> "${EROOT}/tmp/genkernel.config"
#		genkernel --kernel-config="${EROOT}/tmp/genkernel.config" all
#		rm "${EROOT}/tmp/genkernel.config"
#	else # No valid configs known
#		genkernel all
#	fi
#	grub-mkconfig -o /boot/grub/grub.cfg 
#}
