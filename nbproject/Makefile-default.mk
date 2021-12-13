#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
<<<<<<< Updated upstream
SOURCEFILES_QUOTED_IF_SPACED=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/m2m_ota.c src/driver/m2m_periph.c src/driver/m2m_ssl.c src/driver/m2m_wifi.c src/driver/nmasic.c src/driver/nmbus.c src/driver/nmdrv.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/socket/socket.c src/spi_flash/spi_flash.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/main.c src/garrettmain.c src/djolib.c src/wifi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d ${OBJECTDIR}/src/common/nm_common.o.d ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d ${OBJECTDIR}/src/driver/m2m_crypto.o.d ${OBJECTDIR}/src/driver/m2m_hif.o.d ${OBJECTDIR}/src/driver/m2m_ota.o.d ${OBJECTDIR}/src/driver/m2m_periph.o.d ${OBJECTDIR}/src/driver/m2m_ssl.o.d ${OBJECTDIR}/src/driver/m2m_wifi.o.d ${OBJECTDIR}/src/driver/nmasic.o.d ${OBJECTDIR}/src/driver/nmbus.o.d ${OBJECTDIR}/src/driver/nmdrv.o.d ${OBJECTDIR}/src/driver/nmi2c.o.d ${OBJECTDIR}/src/driver/nmspi.o.d ${OBJECTDIR}/src/driver/nmuart.o.d ${OBJECTDIR}/src/socket/socket.o.d ${OBJECTDIR}/src/spi_flash/spi_flash.o.d ${OBJECTDIR}/src/garrett/hourDisplay.o.d ${OBJECTDIR}/src/garrett/main.o.d ${OBJECTDIR}/src/garrett/display.o.d ${OBJECTDIR}/src/garrett/stepper.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/garrettmain.o.d ${OBJECTDIR}/src/djolib.o.d ${OBJECTDIR}/src/wifi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o

# Source Files
SOURCEFILES=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/m2m_ota.c src/driver/m2m_periph.c src/driver/m2m_ssl.c src/driver/m2m_wifi.c src/driver/nmasic.c src/driver/nmbus.c src/driver/nmdrv.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/socket/socket.c src/spi_flash/spi_flash.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/main.c src/garrettmain.c src/djolib.c src/wifi.c
=======
SOURCEFILES_QUOTED_IF_SPACED=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/nmdrv.c src/driver/m2m_periph.c src/driver/m2m_wifi.c src/driver/nmbus.c src/driver/m2m_ssl.c src/driver/m2m_ota.c src/driver/nmasic.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/socket/socket.c src/spi_flash/spi_flash.c src/hourDisplay.c src/main.c src/display.c src/garrettmain.c src/djolib.c src/wifi.c src/alarm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/hourDisplay.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/display.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o ${OBJECTDIR}/src/alarm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d ${OBJECTDIR}/src/common/nm_common.o.d ${OBJECTDIR}/src/driver/nmi2c.o.d ${OBJECTDIR}/src/driver/nmspi.o.d ${OBJECTDIR}/src/driver/nmuart.o.d ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d ${OBJECTDIR}/src/driver/m2m_crypto.o.d ${OBJECTDIR}/src/driver/m2m_hif.o.d ${OBJECTDIR}/src/driver/nmdrv.o.d ${OBJECTDIR}/src/driver/m2m_periph.o.d ${OBJECTDIR}/src/driver/m2m_wifi.o.d ${OBJECTDIR}/src/driver/nmbus.o.d ${OBJECTDIR}/src/driver/m2m_ssl.o.d ${OBJECTDIR}/src/driver/m2m_ota.o.d ${OBJECTDIR}/src/driver/nmasic.o.d ${OBJECTDIR}/src/garrett/hourDisplay.o.d ${OBJECTDIR}/src/garrett/main.o.d ${OBJECTDIR}/src/garrett/display.o.d ${OBJECTDIR}/src/garrett/stepper.o.d ${OBJECTDIR}/src/socket/socket.o.d ${OBJECTDIR}/src/spi_flash/spi_flash.o.d ${OBJECTDIR}/src/hourDisplay.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/display.o.d ${OBJECTDIR}/src/garrettmain.o.d ${OBJECTDIR}/src/djolib.o.d ${OBJECTDIR}/src/wifi.o.d ${OBJECTDIR}/src/alarm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/hourDisplay.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/display.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o ${OBJECTDIR}/src/alarm.o

# Source Files
SOURCEFILES=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/nmdrv.c src/driver/m2m_periph.c src/driver/m2m_wifi.c src/driver/nmbus.c src/driver/m2m_ssl.c src/driver/m2m_ota.c src/driver/nmasic.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/socket/socket.c src/spi_flash/spi_flash.c src/hourDisplay.c src/main.c src/display.c src/garrettmain.c src/djolib.c src/wifi.c src/alarm.c
>>>>>>> Stashed changes



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GA002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
<<<<<<< Updated upstream
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/7ed0c3ba13f2429a93c68e5680e2243e6d4b4cf4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/74c52135e7c4738f52e9339d9363185b2a479b94 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
<<<<<<< Updated upstream
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/607d6af4e16aca383fd6089ea68621f2e58caf07 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/9242c45b3f81742ea44da854dd79c150e46728da .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/ab32224cf30910d8002686bc93092fd62c73c721 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/211cc9ffa988f2bb8b71c4291d31578fea98aaa7 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/779f6361d54beabc5fdec2e2e03fae6539fbeca7 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/ead6303b4e36adbf57d1a4f9a98e88cd02efdcb .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/1de46197b12b6ec4788f78d9fc60dac21114c41c .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/ca21852346b9885a8ff1219762a318c6a9e9fdd1 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/36e85cecde70501ad635b63bee87f9c49defcd04 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/e62004293e4d7a9486b55f2db3295959fb6125b7 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/42147dcb19cbca2c5c98c22cbc388ec9ed22f9db .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/25332463fd07759d7dec8f98d5a93f73fb07c47f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/d07a8cd95675557d5c2e396bfa1831b76c69161f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/be8e28148514d09238c032e625f3fd41a6c50342 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/596858f937a897efb625ac34201b72ca89c28e3f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/3292b9edbce0e8cbc1e66b8cf66c74040a0755b4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/5fcd750a17128a14a2bb99e61d48575d4637ce27 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/952ad73ca7df44a74507fb38a3026b1b16aefdf7 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/5e576e954649a42077223bebb32e3ba15049dc5a .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/bf82ebdfafd463e3cb7003b6f4c73ec73a43f3be .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/2bb50c2fcca109a04b1125722e8ed786df66e82c .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/b58e5e25edd31eba8c1dace9a47231df99837782 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/e8cfb8a2249dbda2a230e9e70726db4c848e8cc1 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/15df43b565ea5e0f510678ac79c4319a4db5d36c .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/15e777b7510a24a71f2baabc6fc220634095d05f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/d840b333ccd2de14dca3323e0e79110e93d66f63 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/9cee42f693b733a878d5ccdf2409817a243f7d20 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/4bcf824e1f215c941122d17e147f173b1eda5622 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/1e3b16bcf8e0d796fa2566116d59c774cbde8a2f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/c8ecf74cbd3c0f916417b359c0f4449ef73e4f28 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/ddf6717cff9b7b8cadc3a78ee82e9b4f6995cb2f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/3fa013ef569e918e325456f735c5e50d744c6e13 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/29f41ac64d9562c3712b35d6440375bdb8c54c53 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/86194905ecc755d01a71b0c613a440f5d58f06be .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/673786ba90c821925eda6f41e4cfbdbc4d8da0b6 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/99c4ad5c87dd78a1e4e74fdafeacf535f00ef2c3 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/850a7ff8505ecd0f859afd3f8f0756b4f0838112 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/7da8c39eb02b48719cbfb98befe21ab2520775d3 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/b18598d4a3405b3dc62edc5cd611968dcb481580 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/78d8d923b52b10d54c7ef9dedad0b2c66dbd0deb .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/8dc09c771757772877f5d4aba701f9e581cfa010 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/fbbd5ee8de6b1d7b0443e8997d433be89af0db28 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/db4f43dca1917ca4c2a28f175d2fdd3a5b44e6c4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/be06c59d192b19f81709978fc2884c4b0801ccb1 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/b9c1c07bdf7e284227c11a7822977d93035e11fe .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/hourDisplay.o: src/hourDisplay.c  .generated_files/flags/default/39624bdfaed62a90cc926daa3dfa41701da406b8 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/hourDisplay.c  -o ${OBJECTDIR}/src/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/8731a88b46c485efb9e7c36643d1b24181db9844 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/display.o: src/display.c  .generated_files/flags/default/8317f7477443bfe114dc059611b17825ff971bcb .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/display.o.d 
	@${RM} ${OBJECTDIR}/src/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/display.c  -o ${OBJECTDIR}/src/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/e301f9c3a33b3778d4acae74d762e098b9a465 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/e03371dbc8fb367fc5aa493ccb4629ec13010057 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/b29ee9a0954a75e9113a17a75b0a968916fa40c5 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/c117291f8992fd148cfdd9a634424ece8456e28b .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
else
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/c83cb063ea918ae331466272aa2a96108e215e90 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/alarm.o: src/alarm.c  .generated_files/flags/default/2e59009f677d5847d487345d0c47d5960c90cf56 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/alarm.o.d 
	@${RM} ${OBJECTDIR}/src/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/alarm.c  -o ${OBJECTDIR}/src/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/alarm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/72523465d51184babeeb633f3e447b3b9d1b6025 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
<<<<<<< Updated upstream
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/787b8e639da39fb3148c52fb8d238d5c1de56e06 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/51ca983e3cf5da39e54dfbcb490e2236dd346b1f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/31ad3cf2cda67202db03382e59f3e80c99410a5f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/e0d2e8828b9a78b598a2e19991e89f33e8f0ab5d .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/5c74406ec73df73ae90bca96bdb7f1ead3ac404f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/89ceda60a33139df8c56de9a5292ff6ed3d681ba .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/9609c4ca0e7b6d36c359a2d8ba00780d776403e6 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/aead65c5c70030ffa029fd24c84b8662d08a27f7 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/af66d49cb87d2f276b97f4033a2b4871cfe6a3cf .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/68c5b21a649368ee2f7c00a4bdea68cc395217f6 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/45ab7cfde50024a624cf25747e95fa23f6afe52e .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/fa4357be726f50b51f4c1820e0e499505b469b75 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/2f5421b7be64b8edfe57b159029747c3f4a587ff .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/71f0baffbfa74bddcce1a4cedec646acf45eb1d4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/ac0806dbcba6b2c8ed7e9dc4243307574d6b50ab .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/3b4dab498650dbe109927ea4b5016da6497998b .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/bcd84937c9924073536c79995bbcead37c65da2c .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/f7d3f89a3ebb7580cea3661dd6bc8e3b46053269 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/5503e3b0fd3316c4d82834d60a9f2c2fc16cee4c .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/2fc29e42e8bfa1244d8766c6195257f4523579d8 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/483a3e4bf308709c4fa2a125aaa2257405acf7d5 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/6fec0b4c2115003863be8ed05502de72dc828c10 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/c2375768eadd6091c42e839236d0143c77f5d2da .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/632bc1852a841ea29f875ccc5cbda0f5fe906f76 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/2fbfa1ac23d7f0fdf4b919ba5212afbaf625f9aa .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/6b1ec03491ca589da9544d5fa35d80273d284929 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/b9d8aa2da41c99289c97d953df3d47c3ee209f9f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/e1c5d4a8806f87ee322f86cf24057f2bb64fbf7f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/16327b7b4d315b08e53298266c1c51215ca6f5a9 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/7d2f99619c9d0d73ef45cd891b72bd4d2267633d .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/24b9dc5513e06107aaa4864b0db7f71469a112b9 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/c2df905c5849238743c2b3e2018062a88597189d .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/f4b6e363f37209ad9f189d96eb03d6642ae1dec0 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/98e74ffc82c44d2656abba0696d27c902b80b426 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/1f85a65095677be9573f3e463e05ca77fb7f123d .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/afc3cee113959d9d52d187ab092ca1a203c0edbe .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/d421ae3379e42aeeb08bd99c088b46a28d3aef4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/387fe941211a2a14cb542d1c129d400c068990b2 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/8d080d33bda6f76a7460591f61098d673a9cd6df .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/86204721deae569589cd20e04957440dbc2c2efa .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/29fde4ef2b26099125c7743d89422ed97f3a9170 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/3d4eca886ca963798f9d7d009d0d572feace29e5 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/87bc069f5af064652814095c17c125c011369ad5 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/acc4b6527b6aed1c70b39907931693d795f01fd3 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/fe219d36ac56dcb5f967109224482aef5d8f27d7 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/hourDisplay.o: src/hourDisplay.c  .generated_files/flags/default/3bad3138533148a7cab995618134888455c5af26 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/hourDisplay.c  -o ${OBJECTDIR}/src/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/79b52f587fa24c79197318f503ffa4e8d3e7f5e .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/display.o: src/display.c  .generated_files/flags/default/268031158499b0afc8ca94f31e4c190456fb042c .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/display.o.d 
	@${RM} ${OBJECTDIR}/src/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/display.c  -o ${OBJECTDIR}/src/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/4648f354dde527f7f5cc6403d5b13d82cbcb95e5 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/fa8715cf6f723460f72223219db724edc924aa5 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/77201db0ceb076aa1f29abfd6d114c6216d5dc25 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
=======
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/8344dd29b7a988fb1b078a79acb0d58939969928 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
>>>>>>> Stashed changes
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
<<<<<<< Updated upstream
=======
${OBJECTDIR}/src/alarm.o: src/alarm.c  .generated_files/flags/default/bf4c3f463ed91d665a07462320c8a5712008da2a .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/alarm.o.d 
	@${RM} ${OBJECTDIR}/src/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/alarm.c  -o ${OBJECTDIR}/src/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/alarm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
>>>>>>> Stashed changes
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
