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
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/76f08c06a58fe5d62b03a71113b74ea4fbb5a7d3 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/a7f75c05f50974f54be02a113026583fd16c91b6 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/45404e62d9915932f4bdbbc3838a26b479928948 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/fc927c35f672273ea943f029843f94ec60f93414 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/6fe2115620a1c35c2eeffed53df9069394e97ddf .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/bf88f546c79e28a077a00b02c2fd8f4d5bea154b .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/97d0c6ef7955c5c1d0a32515352cb4507e615b37 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/6a4efeea9f3268d9cd02afb72d150be0f2b45401 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/972629aa65301abb90d04500e89e3984fd757410 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/38628436735f18922985890b8789cb78550e3a6f .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/d84d7b105345c5dae7d61abe011b82995572ad45 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/f15fe8182c008ce589dba361791ff389b0f38633 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/cb548647a8e3f175c801ff9e1d7727bf9eb3ae25 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/a46605297d7f2e33f082c5aadcd73eeeac26f27b .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/15b768847d4209b6856f6161e337afe95e87b579 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/786f8f9cbdb016aa67d52b6a807aded2fb14eac8 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/d3f61abd688f4d74fd579dd05eba76f6759bb202 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/55296a3d59658c5758d2de8ef602fd48480d71d7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/4bf710437eb424cccc1b6a2b9ece45c9cd3b2c17 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/f0cc235a56c1426c12f39f76317313cd62a7eec0 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/8650b417f81a9756f0d90b789c8ed265902fc561 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/1b3d7848803aed9900ecc679913e68c5edcb6b76 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/e19c13bcc0c061279cd652972100c7e1525870e5 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/6887568252de7b2ea62cec28683c8bf978c43984 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/d735c6998622f0ca5fcfed9e827eb8e20bcb29f1 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/a338a7e741d8ca5ff827a7e2f785d8b1a71f4537 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/fd26e94db8dad4e6cfdb63c445cdb0ca1ed1b56f .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o: src/bus_wrapper/nm_bus_wrapper_pic24.c  .generated_files/flags/default/a604295a6e809e27fa797b6730afbce18109281e .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/bus_wrapper" 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bus_wrapper/nm_bus_wrapper_pic24.c  -o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/common/nm_common.o: src/common/nm_common.c  .generated_files/flags/default/7489f79e475f2fe233f5a1efb485997d89480576 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/common" 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o.d 
	@${RM} ${OBJECTDIR}/src/common/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/common/nm_common.c  -o ${OBJECTDIR}/src/common/nm_common.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/common/nm_common.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ate_mode.o: src/driver/m2m_ate_mode.c  .generated_files/flags/default/e15f9fe65f9e13a879ff84381b7e39cc03aa913 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/31810f9fc3db3caf456ae8a5402de37a1480c049 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/a475fec97124b64db3f0dfe4cf9bf28834fe2ac0 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/203d03ec858f01e1be7bd1f019d5de756d3fc982 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/a396a05c165034ede6d93919625d18349ec9eabf .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/7bdd6f305f366994cd4d1c643d56f63b4174ae05 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/313483512c8235847d676b44622f09b16a185bdf .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/e50d763414a5ae451c80a5fe9b2cf37b9fd7a867 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/7a005e05dfbfc1de79221b4aa82fde8d98f381b8 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/a0d3dd21d2a05aa483029a5720e680763238a4d2 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmi2c.o: src/driver/nmi2c.c  .generated_files/flags/default/c90b74ee5f31a6cb24e4a57581adb481d04082a3 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmi2c.c  -o ${OBJECTDIR}/src/driver/nmi2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmi2c.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmspi.o: src/driver/nmspi.c  .generated_files/flags/default/fbd4b1cf8ae564f08752af47dc31660b1fb0ad4d .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmspi.c  -o ${OBJECTDIR}/src/driver/nmspi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmspi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmuart.o: src/driver/nmuart.c  .generated_files/flags/default/2c25eddb5e7c6f3a77f3da7869a7534a941d39ba .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmuart.c  -o ${OBJECTDIR}/src/driver/nmuart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmuart.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/socket/socket.o: src/socket/socket.c  .generated_files/flags/default/11ea188bd2f9f9b4f1911cfff9fb357c27531eb7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/socket" 
	@${RM} ${OBJECTDIR}/src/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/src/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/socket/socket.c  -o ${OBJECTDIR}/src/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/socket/socket.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/spi_flash/spi_flash.o: src/spi_flash/spi_flash.c  .generated_files/flags/default/e7649699cf8243704cc09160c0fa962181ba758f .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/spi_flash" 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/src/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_flash/spi_flash.c  -o ${OBJECTDIR}/src/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/spi_flash/spi_flash.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/hourDisplay.o: src/garrett/hourDisplay.c  .generated_files/flags/default/d084f6a4f30a0f1b836764f5e135f713139fdecd .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/hourDisplay.c  -o ${OBJECTDIR}/src/garrett/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/main.o: src/garrett/main.c  .generated_files/flags/default/c4f2f25281d0d73c5d8eee344ccf6e02f2a764f0 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/main.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/main.c  -o ${OBJECTDIR}/src/garrett/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/display.o: src/garrett/display.c  .generated_files/flags/default/e2a1ff5d161cdf88537dbe7503574c51e722572a .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/display.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/display.c  -o ${OBJECTDIR}/src/garrett/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrett/stepper.o: src/garrett/stepper.c  .generated_files/flags/default/bbd766d8bf9ab6841b42e3652e168fc5f1ab11ee .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src/garrett" 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o.d 
	@${RM} ${OBJECTDIR}/src/garrett/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrett/stepper.c  -o ${OBJECTDIR}/src/garrett/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrett/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/450ee7e0836847611804141e6c3927bdf17f99cb .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/a124e95fc315714defbec610dc98258d888d632d .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/42045a8f5c29b8319be4e7081fa67a8bc50c3446 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/8de6449f861e3f45d620dc629aa1778f639917b .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
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
