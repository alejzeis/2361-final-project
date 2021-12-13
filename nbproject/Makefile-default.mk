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
MKDIR=mkdir -p
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
SOURCEFILES_QUOTED_IF_SPACED=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/m2m_ota.c src/driver/m2m_periph.c src/driver/m2m_ssl.c src/driver/m2m_wifi.c src/driver/nmasic.c src/driver/nmbus.c src/driver/nmdrv.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/socket/socket.c src/spi_flash/spi_flash.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/main.c src/garrettmain.c src/djolib.c src/wifi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d ${OBJECTDIR}/src/common/nm_common.o.d ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d ${OBJECTDIR}/src/driver/m2m_crypto.o.d ${OBJECTDIR}/src/driver/m2m_hif.o.d ${OBJECTDIR}/src/driver/m2m_ota.o.d ${OBJECTDIR}/src/driver/m2m_periph.o.d ${OBJECTDIR}/src/driver/m2m_ssl.o.d ${OBJECTDIR}/src/driver/m2m_wifi.o.d ${OBJECTDIR}/src/driver/nmasic.o.d ${OBJECTDIR}/src/driver/nmbus.o.d ${OBJECTDIR}/src/driver/nmdrv.o.d ${OBJECTDIR}/src/driver/nmi2c.o.d ${OBJECTDIR}/src/driver/nmspi.o.d ${OBJECTDIR}/src/driver/nmuart.o.d ${OBJECTDIR}/src/socket/socket.o.d ${OBJECTDIR}/src/spi_flash/spi_flash.o.d ${OBJECTDIR}/src/garrett/hourDisplay.o.d ${OBJECTDIR}/src/garrett/main.o.d ${OBJECTDIR}/src/garrett/display.o.d ${OBJECTDIR}/src/garrett/stepper.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/garrettmain.o.d ${OBJECTDIR}/src/djolib.o.d ${OBJECTDIR}/src/wifi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o

# Source Files
SOURCEFILES=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/m2m_ota.c src/driver/m2m_periph.c src/driver/m2m_ssl.c src/driver/m2m_wifi.c src/driver/nmasic.c src/driver/nmbus.c src/driver/nmdrv.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/socket/socket.c src/spi_flash/spi_flash.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/main.c src/garrettmain.c src/djolib.c src/wifi.c



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
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/7ed0c3ba13f2429a93c68e5680e2243e6d4b4cf4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/e62004293e4d7a9486b55f2db3295959fb6125b7 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/25332463fd07759d7dec8f98d5a93f73fb07c47f .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/be8e28148514d09238c032e625f3fd41a6c50342 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/3292b9edbce0e8cbc1e66b8cf66c74040a0755b4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/952ad73ca7df44a74507fb38a3026b1b16aefdf7 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/5e576e954649a42077223bebb32e3ba15049dc5a .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/2bb50c2fcca109a04b1125722e8ed786df66e82c .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/b58e5e25edd31eba8c1dace9a47231df99837782 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/15df43b565ea5e0f510678ac79c4319a4db5d36c .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/d840b333ccd2de14dca3323e0e79110e93d66f63 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/673786ba90c821925eda6f41e4cfbdbc4d8da0b6 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/850a7ff8505ecd0f859afd3f8f0756b4f0838112 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/b18598d4a3405b3dc62edc5cd611968dcb481580 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/b29ee9a0954a75e9113a17a75b0a968916fa40c5 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/c83cb063ea918ae331466272aa2a96108e215e90 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/68c5b21a649368ee2f7c00a4bdea68cc395217f6 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/fa4357be726f50b51f4c1820e0e499505b469b75 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/71f0baffbfa74bddcce1a4cedec646acf45eb1d4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/3b4dab498650dbe109927ea4b5016da6497998b .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/f7d3f89a3ebb7580cea3661dd6bc8e3b46053269 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/5503e3b0fd3316c4d82834d60a9f2c2fc16cee4c .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/483a3e4bf308709c4fa2a125aaa2257405acf7d5 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/6fec0b4c2115003863be8ed05502de72dc828c10 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/632bc1852a841ea29f875ccc5cbda0f5fe906f76 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/6b1ec03491ca589da9544d5fa35d80273d284929 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/1f85a65095677be9573f3e463e05ca77fb7f123d .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/d421ae3379e42aeeb08bd99c088b46a28d3aef4 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/8d080d33bda6f76a7460591f61098d673a9cd6df .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/77201db0ceb076aa1f29abfd6d114c6216d5dc25 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/2361-final-project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
