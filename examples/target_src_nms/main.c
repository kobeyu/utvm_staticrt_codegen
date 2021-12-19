#include <stdint.h>
#include <stdio.h>
#include <tvm/runtime/crt/error_codes.h>

#include "tvm_wrapper.h"
#include "printing.h"

void TVMPlatformAbort(tvm_crt_error_t code);

int main()
{
    printf("Example code of nms\n");
    TVMWrap_Init();

    float data0[] = {
            0, 0.8, 1, 20, 25, 45,
            1, 0.7, 30, 60, 50, 80,
            0, 0.4, 4, 21, 19, 40,
            2, 0.9, 35, 61, 52, 79,
            1, 0.5, 100, 60, 70, 110};

    printf("pointer of input 0:%p\n", TVMWrap_GetInputPtr(0));
    float *dat_ptr = TVMWrap_GetInputPtr(0);

    for (int i = 0; i < 30; i++) {
        *dat_ptr =data0[i];
    }


    dat_ptr = TVMWrap_GetInputPtr(1);
    *(int*)dat_ptr = 4; 


    int np_indices[] ={4, 0, -1, -1, -1};
    dat_ptr = TVMWrap_GetInputPtr(2);
    for (int i = 0; i < 5; i++) {
        *(int*)dat_ptr = np_indices[i];
    }

    //dat_ptr = TVMWrap_GetInputPtr(3);
    //*(int*)dat_ptr = -1;
    //printf("arg3: %d\n", *(int*)dat_ptr);

    dat_ptr = TVMWrap_GetInputPtr(5);
    float np_result[] = {
        2, 0.9, 35, 61, 52, 79,
        0, 0.8, 1, 20, 25, 45,
        -1, -1, -1, -1, -1, -1,
        -1, -1, -1, -1, -1, -1,
        -1, -1, -1, -1, -1, -1
    };

    for (int i = 0; i < 30; i++) {
        printf("%f, ", *(dat_ptr+i));
        *(float*)dat_ptr = np_result[i];
    }



    TVMWrap_Run();
    float result;
    *(volatile float*)&result = *(float *)TVMWrap_GetOutputPtr(0);

    DBGPRINTF("out: %f\n", result);
}
