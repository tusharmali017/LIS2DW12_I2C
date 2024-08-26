#include "i2cLIS2DW12.h"


// Function for initializing LIS2DW12  accelerometer in measure mode
void LIS2DW12_Init()
{
    // Configure LIS2DW12 : Enable Measurement Mode
    I2C1_generateStart();

    I2C1_Write(LIS2DW12_ADDRESS << 1); // Write address
    // Check Acknowledge from LIS2DW12 
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    I2C1_Write(LIS2DW12_CTRL_REG1); // Select Power_CTL register
    // Check Acknowledge from LIS2DW12 
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    
    /* Setting Control Register 1
     * Register Format is- 
     * ODR3 | ODR2 | ODR1 | ODR0 | MODE1 | MODE0 | LP_MODE1 | LP_MODE0
     * Data Rate configuration => High Performance/Low Power Mode 12.5 Hz
     * Mode and Resolution => High performance mode(14 bit resolution)
     * Power Mode and Resolution => Low Power Mode 4 (14 bit resolution)
     */
    I2C1_Write(0x27); 
    
    // Check Acknowledge from LIS2DW12 
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    I2C1_generateStop();
}


// Function for reading LIS2DW12  accelerometer data
uint8_t LIS2DW12_ReadData(uint8_t regAddress)
{
    uint8_t accValue = 0;
    
    I2C1_generateStart();

    I2C1_Write(LIS2DW12_ADDRESS << 1); // Write address
    // Check Acknowledge from LIS2DW12 
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    I2C1_Write(regAddress); 
    // Check Acknowledge from LIS2DW12 
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }

    I2C1_generateRepeatedStart();

    I2C1_Write((LIS2DW12_ADDRESS << 1) | 0x01); // Read address
    // Check Acknowledge from LIS2DW12 
    if (I2C1_checkACKSlave() != I2C_MASTER_ACK)
    {
        return;
    }
    
    //Read value which is received in I2CRCV register
    accValue = I2C1_Read();
    return accValue;

    // Generate Not Acknowledge after reading Z-Axis Data (last byte)
    I2C1_generateACK(I2C_MASTER_NOTACK);

    I2C1_generateStop();
}

