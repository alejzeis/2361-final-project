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
SOURCEFILES_QUOTED_IF_SPACED=src/hourDisplay.c src/main.c src/spi_flash/spi_flash.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/nmdrv.c src/driver/m2m_periph.c src/driver/m2m_wifi.c src/driver/nmbus.c src/driver/m2m_ssl.c src/driver/m2m_ota.c src/driver/nmasic.c src/display.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/garrettmain.c src/common/nm_common.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/bsp/nm_bsp_pic24.c src/djolib.c src/socket/socket.c src/wifi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/hourDisplay.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/display.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/wifi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/hourDisplay.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/spi_flash/spi_flash.o.d ${OBJECTDIR}/src/driver/nmi2c.o.d ${OBJECTDIR}/src/driver/nmspi.o.d ${OBJECTDIR}/src/driver/nmuart.o.d ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d ${OBJECTDIR}/src/driver/m2m_crypto.o.d ${OBJECTDIR}/src/driver/m2m_hif.o.d ${OBJECTDIR}/src/driver/nmdrv.o.d ${OBJECTDIR}/src/driver/m2m_periph.o.d ${OBJECTDIR}/src/driver/m2m_wifi.o.d ${OBJECTDIR}/src/driver/nmbus.o.d ${OBJECTDIR}/src/driver/m2m_ssl.o.d ${OBJECTDIR}/src/driver/m2m_ota.o.d ${OBJECTDIR}/src/driver/nmasic.o.d ${OBJECTDIR}/src/display.o.d ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d ${OBJECTDIR}/src/garrettmain.o.d ${OBJECTDIR}/src/common/nm_common.o.d ${OBJECTDIR}/src/garrett/hourDisplay.o.d ${OBJECTDIR}/src/garrett/main.o.d ${OBJECTDIR}/src/garrett/display.o.d ${OBJECTDIR}/src/garrett/stepper.o.d ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d ${OBJECTDIR}/src/djolib.o.d ${OBJECTDIR}/src/socket/socket.o.d ${OBJECTDIR}/src/wifi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/hourDisplay.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/display.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/garrett/hourDisplay.o ${OBJECTDIR}/src/garrett/main.o ${OBJECTDIR}/src/garrett/display.o ${OBJECTDIR}/src/garrett/stepper.o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/wifi.o

# Source Files
SOURCEFILES=src/hourDisplay.c src/main.c src/spi_flash/spi_flash.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/nmdrv.c src/driver/m2m_periph.c src/driver/m2m_wifi.c src/driver/nmbus.c src/driver/m2m_ssl.c src/driver/m2m_ota.c src/driver/nmasic.c src/display.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/garrettmain.c src/common/nm_common.c src/garrett/hourDisplay.c src/garrett/main.c src/garrett/display.c src/garrett/stepper.c src/bsp/nm_bsp_pic24.c src/djolib.c src/socket/socket.c src/wifi.c



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
${OBJECTDIR}/src/hourDisplay.o: src/hourDisplay.c  .generated_files/flags/default/e479f4fb0739a746b634674a77ab873fbb1cb920 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/hourDisplay.c  -o ${OBJECTDIR}/src/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/710298c62351e7534f517e068acd6c0d455d914d .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/4077fd7237f522598de6bdc8fdc0f1163c137ad9 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/c6fe5297cd0a43cb5236ece8533c02b18e4d7935 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/6103f3b12bc8ca7f0fe72cfeeb5de2247070daec .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/489eae116fb3d1c3df2166ee0191d849879da492 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/f217d45f2ba3e9e4f2627dff30e820b9b233df83 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/1e84c53a35fee4fc816082f3567df839d21413d2 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/4a7d9e8875b80d183abe5819328602e0e6bb4559 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/2a8e9bd653e8144fc76df420c083eadba3fbabeb .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/547c71aeb69b085345b8b61c3d7c0a3bde0f432e .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/d9034fad35af3baf8aa6d261b45577b6738a8af8 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/5f00181af25934fc58f5131cc0ceef3175df4cfa .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/f8518c6466af495ae5b5e9ea5dd5a93a5796fddf .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/3e334a14f89ad92f8d15a0f4178180797a634fa7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/cb730058f48c4a4814884fa8917e6e430401efc2 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/display.o: src/display.c  .generated_files/flags/default/c59f48944a038721444eb47c95d83f2118583b72 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/display.o.d 
	@${RM} ${OBJECTDIR}/src/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/display.c  -o ${OBJECTDIR}/src/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/6f851c7ea98a06873650f501716edef5edfb9ca4 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/a64ab4b6a54304458c15027c7631f53a7db24dee .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/9a8e0a1ffefcadabfebbc6fb2fff77548d2cdd9 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/c176af5be66c1e7db08f69dc135b7c91c3e877e8 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/c1ecfc946c4c934651aa5a95af039163be6bded8 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/7f12afa54f7386d40a23a1ac28715487a03207cf .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/fa4377f46a7ad36e5bdac2ae4c171f0385ebdd14 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/2d00d2b867622749d37ab604aadc5029a2b06905 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/a2a3da6c9a16391b3f59234e7c770ea07e095d5d .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/50c565a468e51f3d260ec52ccb50172b9e4c2f74 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/4b00f5bd97ed7a31511ddea25bfc27251544e246 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/hourDisplay.o: src/hourDisplay.c  .generated_files/flags/default/6cee6cbee4e9d5c4ef36fdcdc438d5b3850a1471 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/hourDisplay.c  -o ${OBJECTDIR}/src/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/b8e80614fb8a8a71a38fa506c4c94c5d1162a8 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/2fac755409a1111c21791c83820046f27d2224b1 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/f2f87f87de38315719d96d86aeeda585f527f27b .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/e023816a39a5dae772ef9a93419c911e21c6426a .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/ef2c7723b3e481e7df3bc87e22bfc76048949d09 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/3b8f726ece8585cf0c0f5c0b16c2ff5f0f2e5be .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/ad34cec87b2b81381da05d88939bb4db59b0bf7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/961a11c45db3d04dd8f80096f3657e7138d468c0 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/519c7504a4ac7f4e689f9c5dea45e721a8cc35c7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/72c741ee5c772ee7cd3473fdea2b2f718f1a2f15 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/a88225c34e5ebd0b91017e1a4136c94f6e0c5766 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/db8ef0778f1c3a2806eeb1007c78f97ad67b2995 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/7403421efc4cb646b8799d985c88e3b119cd5f18 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/2bc7fef6858393dc50ff64e8f047e5f781d4b0e6 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/f0f463cb6a9e077664b6ef726b093728e8633288 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/display.o: src/display.c  .generated_files/flags/default/ff59a5b372a61735f7e56a70b888e37ff65465da .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/display.o.d 
	@${RM} ${OBJECTDIR}/src/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/display.c  -o ${OBJECTDIR}/src/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/a43b2c15bb7debbe332e728c60651c4289c8000c .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/f654940224c0ee9218bf90811726b42c11d06837 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/97eb97b584d185f108697ad411dbff00e1cb4d73 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/737c88844e2d957494e3270cf320fa8d42641909 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/e1464476b57b6f3a4f2b954210047023bbdc8711 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/edbfb219b113676ea046d68f47275117d8cf2236 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/ba251bcab94550cbaf70c61abf0af3d75a940ace .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/cd8ccb16fa321cd766f8ef220aa5878ba1924b9a .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/44ad43be6851ca69bd11f848435fab39425ecb6f .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/4a6d2c6fe2f99aa42e40e11f7b4db19cb7d2887b .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/c43b0cc772e4f3d78b0febac587c75c24bb0bdcd .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
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
