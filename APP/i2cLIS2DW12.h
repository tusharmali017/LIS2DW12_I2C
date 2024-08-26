/* 
 * File:   i2cLIS2DW12.h
 * Author: tushar.mali
 *
 * Created on 11 March, 2024, 3:29 PM
 */

#ifndef I2CLIS2DW12_H
#define	I2CLIS2DW12_H


#include "../BIOS/bios.h"


// LIS2DW12  I2C Address when SDO is High
#define LIS2DW12_ADDRESS       0x19

// LIS2DW12  I2C Address when SDO is Low
//#define LIS2DW12_ADDRESS         0x18


// LIS2DW12  Register Addresses
#define LIS2DW12_CTRL_REG1       0x20

#define LIS2DW12_REG_DATAX0      0x28
#define LIS2DW12_REG_DATAX1      0x29
#define LIS2DW12_REG_DATAY0      0x2A
#define LIS2DW12_REG_DATAY1      0x2B
#define LIS2DW12_REG_DATAZ0      0x2C
#define LIS2DW12_REG_DATAZ1      0x2D

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* I2CLIS2DW12_H */

