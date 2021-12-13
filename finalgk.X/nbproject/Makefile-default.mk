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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=welsch_lab2b_asmlib.s main.c stepper.c alarm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/welsch_lab2b_asmlib.o ${OBJECTDIR}/main.o ${OBJECTDIR}/stepper.o ${OBJECTDIR}/alarm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/welsch_lab2b_asmlib.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/stepper.o.d ${OBJECTDIR}/alarm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/welsch_lab2b_asmlib.o ${OBJECTDIR}/main.o ${OBJECTDIR}/stepper.o ${OBJECTDIR}/alarm.o

# Source Files
SOURCEFILES=welsch_lab2b_asmlib.s main.c stepper.c alarm.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GA002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
<<<<<<< Updated upstream
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/9451cbe4049f1295262c82b5e6583a067953eab3 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/913055b04ce13f994d572a1c27e107fe98711c3d .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/alarm.o: alarm.c  .generated_files/flags/default/dec61489b0b34c2d702e82481103fe2c2f0a4541 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm.o.d 
	@${RM} ${OBJECTDIR}/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  alarm.c  -o ${OBJECTDIR}/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/alarm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
=======
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/d3e4fd5248705f983c46c8baca1eb3a730a6835a .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/92e68c86dccc21ab5795445a7c3fb09e598c46e9 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/alarm.o: alarm.c  .generated_files/flags/default/77212099a05fb35e94d66a9d9d4c13e74e60b8e8 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm.o.d 
	@${RM} ${OBJECTDIR}/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  alarm.c  -o ${OBJECTDIR}/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/alarm.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
>>>>>>> Stashed changes
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/df6cd076d1a5006b126cdf0fb03077cd43afea72 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/3040863b45614173af258f0e416e3e21b60f839e .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/alarm.o: alarm.c  .generated_files/flags/default/6bda308e502be1b2e08c95b62678b9c2eb813bb6 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm.o.d 
	@${RM} ${OBJECTDIR}/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  alarm.c  -o ${OBJECTDIR}/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/alarm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
<<<<<<< Updated upstream
${OBJECTDIR}/welsch_lab2b_asmlib.o: welsch_lab2b_asmlib.s  .generated_files/flags/default/aebbe1b87c2c556ebdc76e955cd45db9ff854a88 .generated_files/flags/default/8b449d8333bd1630ee89e19b300aea7b0121ecd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o.d 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  welsch_lab2b_asmlib.s  -o ${OBJECTDIR}/welsch_lab2b_asmlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/welsch_lab2b_asmlib.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
=======
${OBJECTDIR}/welsch_lab2b_asmlib.o: welsch_lab2b_asmlib.s  .generated_files/flags/default/f21eb9099f46da4d60c58a35c05b870aa3fcdde8 .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o.d 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  welsch_lab2b_asmlib.s  -o ${OBJECTDIR}/welsch_lab2b_asmlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/welsch_lab2b_asmlib.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
>>>>>>> Stashed changes
	
else
${OBJECTDIR}/welsch_lab2b_asmlib.o: welsch_lab2b_asmlib.s  .generated_files/flags/default/78d152d78f3c587df67b7d3a483f9fa8b451fa0b .generated_files/flags/default/58e4717bcbb660b73994950a0feef2243fc0ed6b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o.d 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  welsch_lab2b_asmlib.s  -o ${OBJECTDIR}/welsch_lab2b_asmlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/welsch_lab2b_asmlib.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
<<<<<<< Updated upstream
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
=======
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
>>>>>>> Stashed changes
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/finalgk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
