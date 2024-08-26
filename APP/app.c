#include "app.h"


//static Functions
static void readLIS2DW12UsingI2C();

//Global Variables
uint16_t buf[32] = {};
uint16_t X_out = 0, Y_out = 0, Z_out = 0;

void runApp()
{
    //Enable I2C
    I2C1_open();

    LIS2DW12_Init();

    while (1)
    {
        // Read ADXL345 Accelerometer Data through I2C Function
        readLIS2DW12UsingI2C();

        sprintf(buf, "X_out = %d\tY_out = %d\tZ_out = %d\r\n", X_out, Y_out, Z_out);

        UART1WriteString(buf);
        timer1Delay(250);
    }
    //Disable I2C
    I2C1_close();
}


static void readLIS2DW12UsingI2C()
{
    X_out = (int16_t) (LIS2DW12_ReadData(LIS2DW12_REG_DATAX0) | LIS2DW12_ReadData(LIS2DW12_REG_DATAX1) << 8);
    Y_out = (int16_t) (LIS2DW12_ReadData(LIS2DW12_REG_DATAY0) | LIS2DW12_ReadData(LIS2DW12_REG_DATAY1) << 8);
    Z_out = (int16_t) (LIS2DW12_ReadData(LIS2DW12_REG_DATAZ0) | LIS2DW12_ReadData(LIS2DW12_REG_DATAZ1) << 8);
}
