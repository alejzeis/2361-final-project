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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=alarm.c display.c hourDisplay.c lcd.c main.c stepper.c welsch_lab2b_asmlib.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/alarm.o ${OBJECTDIR}/display.o ${OBJECTDIR}/hourDisplay.o ${OBJECTDIR}/lcd.o ${OBJECTDIR}/main.o ${OBJECTDIR}/stepper.o ${OBJECTDIR}/welsch_lab2b_asmlib.o
POSSIBLE_DEPFILES=${OBJECTDIR}/alarm.o.d ${OBJECTDIR}/display.o.d ${OBJECTDIR}/hourDisplay.o.d ${OBJECTDIR}/lcd.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/stepper.o.d ${OBJECTDIR}/welsch_lab2b_asmlib.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/alarm.o ${OBJECTDIR}/display.o ${OBJECTDIR}/hourDisplay.o ${OBJECTDIR}/lcd.o ${OBJECTDIR}/main.o ${OBJECTDIR}/stepper.o ${OBJECTDIR}/welsch_lab2b_asmlib.o

# Source Files
SOURCEFILES=alarm.c display.c hourDisplay.c lcd.c main.c stepper.c welsch_lab2b_asmlib.s



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GA002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/alarm.o: alarm.c  .generated_files/flags/default/cf6a9f4ea630d91fbe1fa17ecdeef8e8a031ac7d .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm.o.d 
	@${RM} ${OBJECTDIR}/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  alarm.c  -o ${OBJECTDIR}/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/alarm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/display.o: display.c  .generated_files/flags/default/b756879ca47a4327a3e04da26d95a270f82393d1 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display.o.d 
	@${RM} ${OBJECTDIR}/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  display.c  -o ${OBJECTDIR}/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/display.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hourDisplay.o: hourDisplay.c  .generated_files/flags/default/e15dcc6bec9691ea3cc4cfbdfc2024591c857866 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hourDisplay.c  -o ${OBJECTDIR}/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hourDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lcd.o: lcd.c  .generated_files/flags/default/ef9852fe6d2b321a1e1e9d9a4d10b0083f42eee0 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.o.d 
	@${RM} ${OBJECTDIR}/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lcd.c  -o ${OBJECTDIR}/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/20947a4fccb13ce18eeac82c9d631cf51ea7a4d7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/b18988ef7d8f93e03a4d9a7d472cb924856afbdd .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/alarm.o: alarm.c  .generated_files/flags/default/955803f46cc5c3902ffe876f5244210763f4eff7 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alarm.o.d 
	@${RM} ${OBJECTDIR}/alarm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  alarm.c  -o ${OBJECTDIR}/alarm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/alarm.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/display.o: display.c  .generated_files/flags/default/e6a0c634fd2a1723ce6e87182ba80993951afd27 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display.o.d 
	@${RM} ${OBJECTDIR}/display.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  display.c  -o ${OBJECTDIR}/display.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/display.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hourDisplay.o: hourDisplay.c  .generated_files/flags/default/653c6a1bfd407d5870bd30d7b395ee0d88444a05 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hourDisplay.o.d 
	@${RM} ${OBJECTDIR}/hourDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hourDisplay.c  -o ${OBJECTDIR}/hourDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hourDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lcd.o: lcd.c  .generated_files/flags/default/1f1715b2d631e967403614530efd35f94f97be88 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.o.d 
	@${RM} ${OBJECTDIR}/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lcd.c  -o ${OBJECTDIR}/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lcd.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/82c52b2dd44c8d38feea8b7766d45d3f7db90c05 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stepper.o: stepper.c  .generated_files/flags/default/517c949860770ceb8d22e879094a1b780f5a3142 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stepper.o.d 
	@${RM} ${OBJECTDIR}/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stepper.c  -o ${OBJECTDIR}/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stepper.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/welsch_lab2b_asmlib.o: welsch_lab2b_asmlib.s  .generated_files/flags/default/b97109757a649a4413c1a673d8e4a25d181e58a2 .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o.d 
	@${RM} ${OBJECTDIR}/welsch_lab2b_asmlib.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  welsch_lab2b_asmlib.s  -o ${OBJECTDIR}/welsch_lab2b_asmlib.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/welsch_lab2b_asmlib.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/welsch_lab2b_asmlib.o: welsch_lab2b_asmlib.s  .generated_files/flags/default/da4000bb826008faad1ebbd959fb6a985878834b .generated_files/flags/default/51d68fbe3c3b78ef3edaaa9505a01551f0e49494
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
dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/finalgk_1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
