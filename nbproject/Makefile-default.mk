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
FINAL_IMAGE=${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=APP/app.c APP/i2cLIS2DW12.c BIOS/bios.c BIOS/i2c1.c BIOS/i2c2.c BIOS/pinmap.c BIOS/spi1.c BIOS/timer1.c BIOS/uart1.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/APP/app.o ${OBJECTDIR}/APP/i2cLIS2DW12.o ${OBJECTDIR}/BIOS/bios.o ${OBJECTDIR}/BIOS/i2c1.o ${OBJECTDIR}/BIOS/i2c2.o ${OBJECTDIR}/BIOS/pinmap.o ${OBJECTDIR}/BIOS/spi1.o ${OBJECTDIR}/BIOS/timer1.o ${OBJECTDIR}/BIOS/uart1.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/APP/app.o.d ${OBJECTDIR}/APP/i2cLIS2DW12.o.d ${OBJECTDIR}/BIOS/bios.o.d ${OBJECTDIR}/BIOS/i2c1.o.d ${OBJECTDIR}/BIOS/i2c2.o.d ${OBJECTDIR}/BIOS/pinmap.o.d ${OBJECTDIR}/BIOS/spi1.o.d ${OBJECTDIR}/BIOS/timer1.o.d ${OBJECTDIR}/BIOS/uart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/APP/app.o ${OBJECTDIR}/APP/i2cLIS2DW12.o ${OBJECTDIR}/BIOS/bios.o ${OBJECTDIR}/BIOS/i2c1.o ${OBJECTDIR}/BIOS/i2c2.o ${OBJECTDIR}/BIOS/pinmap.o ${OBJECTDIR}/BIOS/spi1.o ${OBJECTDIR}/BIOS/timer1.o ${OBJECTDIR}/BIOS/uart1.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=APP/app.c APP/i2cLIS2DW12.c BIOS/bios.c BIOS/i2c1.c BIOS/i2c2.c BIOS/pinmap.c BIOS/spi1.c BIOS/timer1.c BIOS/uart1.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ1024GB610
MP_LINKER_FILE_OPTION=,--script=p24FJ1024GB610.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/a410b0e54b696237b37b9550ac35f36c30a2443f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/i2cLIS2DW12.o: APP/i2cLIS2DW12.c  .generated_files/flags/default/8be5b6f000719f9cf67b6e24517a5cb86ac43695 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/i2cLIS2DW12.o.d 
	@${RM} ${OBJECTDIR}/APP/i2cLIS2DW12.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/i2cLIS2DW12.c  -o ${OBJECTDIR}/APP/i2cLIS2DW12.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/i2cLIS2DW12.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/13313c25f5e7bb7805e188622b37b30a0e08c800 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/732fb762682211e23c4219654be6f5be189a6fe5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/22c304e4e27626625aafd962be5ff53a44313778 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/f9c30dedc31d415a7920bcb056d5df201a4e77e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/1126fc80bf08c2aaba20d326ca90ef6485ba8082 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/16a5afff0afd99decdd8b6127651e256dd14d530 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/472a5a5dab69e8a5f966c6d05831126b41e0435b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/6668fd78acd9f14f26dc7b02f01b22868d583822 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/APP/app.o: APP/app.c  .generated_files/flags/default/6451e5497cbac9690132dda1541f7e1a9f4889e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/app.o.d 
	@${RM} ${OBJECTDIR}/APP/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/app.c  -o ${OBJECTDIR}/APP/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/APP/i2cLIS2DW12.o: APP/i2cLIS2DW12.c  .generated_files/flags/default/1b4d11f0351a60cdd3c54d41dfb7ea9f9caec438 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/APP" 
	@${RM} ${OBJECTDIR}/APP/i2cLIS2DW12.o.d 
	@${RM} ${OBJECTDIR}/APP/i2cLIS2DW12.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  APP/i2cLIS2DW12.c  -o ${OBJECTDIR}/APP/i2cLIS2DW12.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/APP/i2cLIS2DW12.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/bios.o: BIOS/bios.c  .generated_files/flags/default/d82696b827e7b71798db3c7ae1bf26ef0587df08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/bios.o.d 
	@${RM} ${OBJECTDIR}/BIOS/bios.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/bios.c  -o ${OBJECTDIR}/BIOS/bios.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/bios.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c1.o: BIOS/i2c1.c  .generated_files/flags/default/744c709ec80ebd21487da999ee443c60bd08a868 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c1.c  -o ${OBJECTDIR}/BIOS/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/i2c2.o: BIOS/i2c2.c  .generated_files/flags/default/afb71e48f82eb5446791f576e4e81e3c526e56d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o.d 
	@${RM} ${OBJECTDIR}/BIOS/i2c2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/i2c2.c  -o ${OBJECTDIR}/BIOS/i2c2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/i2c2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/pinmap.o: BIOS/pinmap.c  .generated_files/flags/default/57ea603b3c9bb2b21d65b70d34a939604a6f9d69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o.d 
	@${RM} ${OBJECTDIR}/BIOS/pinmap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/pinmap.c  -o ${OBJECTDIR}/BIOS/pinmap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/pinmap.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/spi1.o: BIOS/spi1.c  .generated_files/flags/default/d490f07cc611568ae2a8f8a98453a694a7e4554f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/spi1.c  -o ${OBJECTDIR}/BIOS/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/timer1.o: BIOS/timer1.c  .generated_files/flags/default/8acc93e198c98886d51c7cce5cf0edc9df2f56b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/timer1.c  -o ${OBJECTDIR}/BIOS/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/timer1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/BIOS/uart1.o: BIOS/uart1.c  .generated_files/flags/default/e793d07432b6447ed16dd53308c0e2de1c8a02c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/BIOS" 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o.d 
	@${RM} ${OBJECTDIR}/BIOS/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  BIOS/uart1.c  -o ${OBJECTDIR}/BIOS/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/BIOS/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/84e07a607b6119bd5d0cda1080d1da372bd8e478 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD4=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/LIS2DW12AccelerometerI2C.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
