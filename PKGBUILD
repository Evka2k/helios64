pkgname=helios64
pkgver=1
pkgrel=0
pkgdesc="scripts and more for Helios64"
arch=('aarch64')
license=('GPL')
depends=('lm_sensors')
source=("https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/fancontrol.service.pid-override"
        "https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/fancontrol.conf"
        "https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/90-helios64-hwmon.rules"
        "https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/50-usb-realtek-net.rules"
        "https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/90-helios64-ups.rules"
        "https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/disable_auto_poweron"
        "https://raw.githubusercontent.com/armbian/build/master/packages/bsp/helios64/helios64-heartbeat-led.service"
        'helios64-ups.service'
        'helios64-ups.timer'
        'autopower.sh'
        'helios64-ups.sh')
md5sums=('1b82df3b821132a74f8d4446afaad2f4'
         '29904e90ef01693b40e9f9d60064f6b1'
         '5a31458dab7930cf1f1a2d7133f9cd83'
         '3c0b7e0b1cd1f0a4640dc09e5eda5239'
         '84e2b88a2c8e48428eafaa5c0d4d807e'
         'a3741e0392abbfba5515752b6a9edf68'
         '6c28e4cc0c9bf6c98d49524a30ad8bc0'
         '78861321de40b749f5be59c5fb952f04'
         '5a2e17a71083bc12f1e9f6718dfdab2e'
         '9f28f50eb7e0ac5894c3b8bd25531644'
         '4f48242fe82f96c44490d813300adda7')

package() {
	install -Dm644 fancontrol.service.pid-override "${pkgdir}"/etc/systemd/system/fancontrol.service.d/pid.conf
	install -Dm644 fancontrol.conf "${pkgdir}"/etc/fancontrol
	install -Dm644 90-helios64-hwmon.rules -t "${pkgdir}"/etc/udev/rules.d
	install -Dm644 50-usb-realtek-net.rules -t "${pkgdir}"/etc/udev/rules.d
	install -Dm644 90-helios64-ups.rules -t "${pkgdir}"/etc/udev/rules.d
	install -Dm644 helios64-heartbeat-led.service -t "${pkgdir}"/usr/lib/systemd/system
	install -Dm644 helios64-ups.service -t "${pkgdir}"/usr/lib/systemd/system
	install -Dm644 helios64-ups.timer -t "${pkgdir}"/usr/lib/systemd/system
	install -Dm755 disable_auto_poweron -t "${pkgdir}"/usr/lib/systemd/system-shutdown/
	install -Dm755 autopower.sh "${pkgdir}/usr/bin/autopower"
	install -Dm755 helios64-ups.sh -t "${pkgdir}/usr/bin"
}
