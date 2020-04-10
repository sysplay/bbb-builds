CONFIG_SCRIPT := .config.sh

.PHONY: all clean
.PHONY: install_libs install_pkgs
.PHONY: generate_prepare_usd
.PHONY: check_setup generate_config ${CONFIG_SCRIPT}

all: build_uboot build_linux build_rootfs

install_toolchain: generate_config
	@Toolchain/install_toolchain

install_libs:
	@Toolchain/install_libs

install_pkgs:
	@Toolchain/install_pkgs

build_uboot: generate_config
	@Bootloader/build_uboot

build_linux: generate_config
	@OS/build_linux

build_rootfs: generate_config
	@RootFS/build_rootfs

generate_prepare_usd:
	@Utils/generate_prepare_usd

check_setup:
	@./check_setup
	@echo
	@echo "*** Setup is Ready ***"
	@echo

generate_config: ${CONFIG_SCRIPT}
	$(shell chmod a+x $<)

${CONFIG_SCRIPT}:
	@echo -n > $@
	@echo "export TOOLCHAIN_VERSION=6.5-2018.12" >> $@
	@echo "export TOOLCHAIN_FILE_VERSION=6.5.0-2018.12" >> $@
	@echo "export TOOLCHAIN_URL=https://releases.linaro.org/components/toolchain/binaries/6.5-2018.12/arm-linux-gnueabihf" >> $@
	@echo "export ARCH=arm" >> $@
	@echo "export CROSS_COMPILE=arm-linux-gnueabihf-" >> $@
	@echo "export UBOOT_VERSION=2019.04" >> $@
	@echo "export UBOOT_DEFCONFIG=am335x_evm_defconfig" >> $@
	@echo "export LINUX_VERSION=4.19.103" >> $@
	@echo "export LINUX_URL=https://mirrors.edge.kernel.org/pub/linux/kernel/v4.x" >> $@
	@echo Config saved to $@

clean:

allclean: clean
	${RM} ${CONFIG_SCRIPT}
