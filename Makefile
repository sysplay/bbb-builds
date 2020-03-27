CONFIG_SCRIPT := .config.sh

.PHONY: all install_toolchain install_libs build_config clean

all:

install_toolchain: build_config
	Toolchain/install_toolchain

install_libs:
	Toolchain/install_libs

install_pkgs:
	Toolchain/install_pkgs

build_config: ${CONFIG_SCRIPT}
	$(shell chmod a+x $<)

${CONFIG_SCRIPT}:
	@echo "export TOOLCHAIN_PATH=https://releases.linaro.org/components/toolchain/binaries/6.5-2018.12/arm-linux-gnueabihf" > $@
	@echo "export TOOLCHAIN_VERSION=6.5.0-2018.12" >> $@
	@echo "export UBOOT_VERSION=2019.04" >> $@
	@echo "export LINUX_VERSION=4.19" >> $@
	@echo Config saved to $@

clean:

allclean: clean
	${RM} ${CONFIG_SCRIPT}
