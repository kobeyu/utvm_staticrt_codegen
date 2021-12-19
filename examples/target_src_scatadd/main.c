#include <stdint.h>
#include <stdio.h>
#include <tvm/runtime/crt/error_codes.h>

#include "tvm_wrapper.h"
#include "printing.h"

void TVMPlatformAbort(tvm_crt_error_t code);

int main()
{
    TVMWrap_Init();

    const int LEN = 10;
    int* dat_ptr = TVMWrap_GetInputPtr(0);

    for (int i = 0; i < LEN; i++)
        *(dat_ptr + i) = 1;

    int64_t* ind_ptr = TVMWrap_GetInputPtr(1);

    for (int i = 0; i < LEN; i++)
        *(ind_ptr + i) = i;

    int* update_ptr = TVMWrap_GetInputPtr(2);
    for (int i = 0; i < LEN; i++)
        *(update_ptr + i) = i;


    TVMWrap_Run();

    int* result = (int *)TVMWrap_GetOutputPtr(0);

    for (int i = 0; i < LEN; i++) {
        DBGPRINTF("out: %d\n", *(result+i));
    }


}
