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
SOURCEFILES_QUOTED_IF_SPACED=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/nmdrv.c src/driver/m2m_periph.c src/driver/m2m_wifi.c src/driver/nmbus.c src/driver/m2m_ssl.c src/driver/m2m_ota.c src/driver/nmasic.c src/display.c src/hourDisplay.c stepper.c src/socket/socket.c src/spi_flash/spi_flash.c src/main.c src/garrettmain.c src/djolib.c src/wifi.c src/alarm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/display.o ${OBJECTDIR}/src/hourDisplay.o ${OBJECTDIR}/stepper.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o ${OBJECTDIR}/src/alarm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o.d ${OBJECTDIR}/src/common/nm_common.o.d ${OBJECTDIR}/src/driver/nmi2c.o.d ${OBJECTDIR}/src/driver/nmspi.o.d ${OBJECTDIR}/src/driver/nmuart.o.d ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d ${OBJECTDIR}/src/driver/m2m_crypto.o.d ${OBJECTDIR}/src/driver/m2m_hif.o.d ${OBJECTDIR}/src/driver/nmdrv.o.d ${OBJECTDIR}/src/driver/m2m_periph.o.d ${OBJECTDIR}/src/driver/m2m_wifi.o.d ${OBJECTDIR}/src/driver/nmbus.o.d ${OBJECTDIR}/src/driver/m2m_ssl.o.d ${OBJECTDIR}/src/driver/m2m_ota.o.d ${OBJECTDIR}/src/driver/nmasic.o.d ${OBJECTDIR}/src/display.o.d ${OBJECTDIR}/src/hourDisplay.o.d ${OBJECTDIR}/stepper.o.d ${OBJECTDIR}/src/socket/socket.o.d ${OBJECTDIR}/src/spi_flash/spi_flash.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/src/garrettmain.o.d ${OBJECTDIR}/src/djolib.o.d ${OBJECTDIR}/src/wifi.o.d ${OBJECTDIR}/src/alarm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/bsp/nm_bsp_pic24.o ${OBJECTDIR}/src/bus_wrapper/nm_bus_wrapper_pic24.o ${OBJECTDIR}/src/common/nm_common.o ${OBJECTDIR}/src/driver/nmi2c.o ${OBJECTDIR}/src/driver/nmspi.o ${OBJECTDIR}/src/driver/nmuart.o ${OBJECTDIR}/src/driver/m2m_ate_mode.o ${OBJECTDIR}/src/driver/m2m_crypto.o ${OBJECTDIR}/src/driver/m2m_hif.o ${OBJECTDIR}/src/driver/nmdrv.o ${OBJECTDIR}/src/driver/m2m_periph.o ${OBJECTDIR}/src/driver/m2m_wifi.o ${OBJECTDIR}/src/driver/nmbus.o ${OBJECTDIR}/src/driver/m2m_ssl.o ${OBJECTDIR}/src/driver/m2m_ota.o ${OBJECTDIR}/src/driver/nmasic.o ${OBJECTDIR}/src/display.o ${OBJECTDIR}/src/hourDisplay.o ${OBJECTDIR}/stepper.o ${OBJECTDIR}/src/socket/socket.o ${OBJECTDIR}/src/spi_flash/spi_flash.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/garrettmain.o ${OBJECTDIR}/src/djolib.o ${OBJECTDIR}/src/wifi.o ${OBJECTDIR}/src/alarm.o

# Source Files
SOURCEFILES=src/bsp/nm_bsp_pic24.c src/bus_wrapper/nm_bus_wrapper_pic24.c src/common/nm_common.c src/driver/nmi2c.c src/driver/nmspi.c src/driver/nmuart.c src/driver/m2m_ate_mode.c src/driver/m2m_crypto.c src/driver/m2m_hif.c src/driver/nmdrv.c src/driver/m2m_periph.c src/driver/m2m_wifi.c src/driver/nmbus.c src/driver/m2m_ssl.c src/driver/m2m_ota.c src/driver/nmasic.c src/display.c src/hourDisplay.c stepper.c src/socket/socket.c src/spi_flash/spi_flash.c src/main.c src/garrettmain.c src/djolib.c src/wifi.c src/alarm.c



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
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/74c52135e7c4738f52e9339d9363185b2a479b94 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/42147dcb19cbca2c5c98c22cbc388ec9ed22f9db .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/d07a8cd95675557d5c2e396bfa1831b76c69161f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/596858f937a897efb625ac34201b72ca89c28e3f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/5fcd750a17128a14a2bb99e61d48575d4637ce27 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/bf82ebdfafd463e3cb7003b6f4c73ec73a43f3be .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/e8cfb8a2249dbda2a230e9e70726db4c848e8cc1 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/15e777b7510a24a71f2baabc6fc220634095d05f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/9cee42f693b733a878d5ccdf2409817a243f7d20 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/29f41ac64d9562c3712b35d6440375bdb8c54c53 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/display.o: src/display.c  .generated_files/flags/default/8317f7477443bfe114dc059611b17825ff971bcb .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/display.o.d 
	@${RM} ${OBJECTDIR}/src/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/display.c  -o ${OBJECTDIR}/src/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/hourDisplay.o: src/hourDisplay.c  .generated_files/flags/default/39624bdfaed62a90cc926daa3dfa41701da406b8 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/hourDisplay.c  -o ${OBJECTDIR}/src/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/6e173e1a4dcb1e7bb75325e8c12110e095e77148 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/8731a88b46c485efb9e7c36643d1b24181db9844 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/e301f9c3a33b3778d4acae74d762e098b9a465 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/e03371dbc8fb367fc5aa493ccb4629ec13010057 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/c117291f8992fd148cfdd9a634424ece8456e28b .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/alarm.o: src/alarm.c  .generated_files/flags/default/2e59009f677d5847d487345d0c47d5960c90cf56 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/alarm.o.d 
	@${RM} ${OBJECTDIR}/src/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/alarm.c  -o ${OBJECTDIR}/src/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/alarm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/src/bsp/nm_bsp_pic24.o: src/bsp/nm_bsp_pic24.c  .generated_files/flags/default/72523465d51184babeeb633f3e447b3b9d1b6025 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/bsp" 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d 
	@${RM} ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/bsp/nm_bsp_pic24.c  -o ${OBJECTDIR}/src/bsp/nm_bsp_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/bsp/nm_bsp_pic24.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ate_mode.c  -o ${OBJECTDIR}/src/driver/m2m_ate_mode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ate_mode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_crypto.o: src/driver/m2m_crypto.c  .generated_files/flags/default/45ab7cfde50024a624cf25747e95fa23f6afe52e .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_crypto.c  -o ${OBJECTDIR}/src/driver/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_crypto.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_hif.o: src/driver/m2m_hif.c  .generated_files/flags/default/2f5421b7be64b8edfe57b159029747c3f4a587ff .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_hif.c  -o ${OBJECTDIR}/src/driver/m2m_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_hif.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmdrv.o: src/driver/nmdrv.c  .generated_files/flags/default/ac0806dbcba6b2c8ed7e9dc4243307574d6b50ab .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmdrv.c  -o ${OBJECTDIR}/src/driver/nmdrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmdrv.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_periph.o: src/driver/m2m_periph.c  .generated_files/flags/default/bcd84937c9924073536c79995bbcead37c65da2c .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_periph.c  -o ${OBJECTDIR}/src/driver/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_periph.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_wifi.o: src/driver/m2m_wifi.c  .generated_files/flags/default/2fc29e42e8bfa1244d8766c6195257f4523579d8 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_wifi.c  -o ${OBJECTDIR}/src/driver/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmbus.o: src/driver/nmbus.c  .generated_files/flags/default/c2375768eadd6091c42e839236d0143c77f5d2da .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmbus.c  -o ${OBJECTDIR}/src/driver/nmbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmbus.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ssl.o: src/driver/m2m_ssl.c  .generated_files/flags/default/2fbfa1ac23d7f0fdf4b919ba5212afbaf625f9aa .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ssl.c  -o ${OBJECTDIR}/src/driver/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ssl.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/m2m_ota.o: src/driver/m2m_ota.c  .generated_files/flags/default/b9d8aa2da41c99289c97d953df3d47c3ee209f9f .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/src/driver/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/m2m_ota.c  -o ${OBJECTDIR}/src/driver/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/m2m_ota.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/driver/nmasic.o: src/driver/nmasic.c  .generated_files/flags/default/f4b6e363f37209ad9f189d96eb03d6642ae1dec0 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src/driver" 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o.d 
	@${RM} ${OBJECTDIR}/src/driver/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/driver/nmasic.c  -o ${OBJECTDIR}/src/driver/nmasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/driver/nmasic.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/display.o: src/display.c  .generated_files/flags/default/268031158499b0afc8ca94f31e4c190456fb042c .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/display.o.d 
	@${RM} ${OBJECTDIR}/src/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/display.c  -o ${OBJECTDIR}/src/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/hourDisplay.o: src/hourDisplay.c  .generated_files/flags/default/3bad3138533148a7cab995618134888455c5af26 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/src/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/hourDisplay.c  -o ${OBJECTDIR}/src/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/6bb872430e8e916360f00f7d3ec6f69ce721069b .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
	
${OBJECTDIR}/src/main.o: src/main.c  .generated_files/flags/default/79b52f587fa24c79197318f503ffa4e8d3e7f5e .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main.c  -o ${OBJECTDIR}/src/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/garrettmain.o: src/garrettmain.c  .generated_files/flags/default/4648f354dde527f7f5cc6403d5b13d82cbcb95e5 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/garrettmain.o.d 
	@${RM} ${OBJECTDIR}/src/garrettmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/garrettmain.c  -o ${OBJECTDIR}/src/garrettmain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/garrettmain.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/djolib.o: src/djolib.c  .generated_files/flags/default/fa8715cf6f723460f72223219db724edc924aa5 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/djolib.o.d 
	@${RM} ${OBJECTDIR}/src/djolib.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/djolib.c  -o ${OBJECTDIR}/src/djolib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/djolib.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/wifi.o: src/wifi.c  .generated_files/flags/default/8344dd29b7a988fb1b078a79acb0d58939969928 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/wifi.o.d 
	@${RM} ${OBJECTDIR}/src/wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/wifi.c  -o ${OBJECTDIR}/src/wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/wifi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/src/alarm.o: src/alarm.c  .generated_files/flags/default/bf4c3f463ed91d665a07462320c8a5712008da2a .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/alarm.o.d 
	@${RM} ${OBJECTDIR}/src/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/alarm.c  -o ${OBJECTDIR}/src/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/src/alarm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
