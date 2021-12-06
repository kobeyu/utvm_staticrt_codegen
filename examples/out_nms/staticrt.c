// This file is generated. Do not edit.
// Generated on: 06.12.2021 21:06:04
#include <stdlib.h>
#include <string.h>
#include <tvm/runtime/crt/error_codes.h>
#include <tvm/runtime/c_runtime_api.h>
#include <tvm/runtime/crt/stack_allocator.h>
#include "printing.h"

void TVMPlatformAbort(tvm_crt_error_t code);

typedef struct ArgInfo { void *buffer; size_t size; } ArgInfo;

tvm_workspace_t g_workspace;
#define WORKSPACE_SIZE (100)
static uint8_t g_workspace_buf[WORKSPACE_SIZE];
static uint8_t g_storage_0[120];
static uint8_t g_storage_1[4];
static uint8_t g_storage_2[20];
static uint8_t g_storage_3[4];
static const uint8_t g_storage_4[4] = {"\x00\x00\x00\x3f"};
static uint8_t g_storage_5[120];

int32_t tvmgen_default_fused_vision_non_max_suppression(void *, void*);

void TVMWrap_Run() {
  TVMValue args[6];
  int32_t arg_type_ids[6];
  DLTensor dlargs[6];
  for (int i = 0; i < 6; i++) {
    args[i].v_handle = &dlargs[i];
  }

  dlargs[0].data = (void*)&g_storage_0[0];
  dlargs[1].data = (void*)&g_storage_1[0];
  dlargs[2].data = (void*)&g_storage_2[0];
  dlargs[3].data = (void*)&g_storage_3[0];
  dlargs[4].data = (void*)&g_storage_4[0];
  dlargs[5].data = (void*)&g_storage_5[0];
  printf("run!\n");
  if  (tvmgen_default_fused_vision_non_max_suppression(args, arg_type_ids) != 0) {
    TVMPlatformAbort(kTvmErrorPlatformCheckFailure);
  }
}

void TVMWrap_Init()
{
  StackMemoryManager_Init(&g_workspace, g_workspace_buf, WORKSPACE_SIZE);
}
static const ArgInfo inArgInfo[] = {{&g_storage_0[0],120}, {&g_storage_1[0],4}, {&g_storage_2[0],20}, {&g_storage_3[0],0}, };
static const ArgInfo outArgInfo[] = {{&g_storage_5[0],120}, };
void *TVMWrap_GetInputPtr(int index)
{
  return inArgInfo[index].buffer;
}
size_t TVMWrap_GetInputSize(int index)
{
  return inArgInfo[index].size;
}
size_t TVMWrap_GetNumInputs()
{
  return 4;
}
void *TVMWrap_GetOutputPtr(int index)
{
  return outArgInfo[index].buffer;
}
size_t TVMWrap_GetOutputSize(int index)
{
  return outArgInfo[index].size;
}
size_t TVMWrap_GetNumOutputs()
{
  return 1;
}

void* TVMBackendAllocWorkspace(int device_type, int device_id, uint64_t nbytes, int dtype_code_hint,
                               int dtype_bits_hint) {
  void *out_ptr = NULL;
#ifdef TVMCG_DEBUG_ALLOCATIONS
  if (nbytes > (g_workspace.workspace + g_workspace.workspace_size - g_workspace.next_alloc)) {
    DBGPRINTF("TVMBackendAllocWorkspace(%lu): Allocation would overflow arena!\n", nbytes);
  }
#endif
  if (StackMemoryManager_Allocate(&g_workspace, nbytes, &out_ptr)) {
    return NULL;
  }
  return out_ptr;
}

int TVMBackendFreeWorkspace(int device_type, int device_id, void* ptr) {
#ifdef TVMCG_DEBUG_ALLOCATIONS
  if ((uint8_t*)ptr < g_workspace.workspace || (uint8_t*)ptr >= g_workspace.next_alloc) {
    DBGPRINTF("TVMBackendFreeWorkspace(%p): Invalid Memory region to be free'd!\n", ptr);
  }
#endif
  return StackMemoryManager_Free(&g_workspace, ptr);
}

void TVMPlatformAbort(tvm_crt_error_t code) {
  exit(1);
}
