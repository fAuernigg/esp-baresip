
#ifndef _SIPPHONE_H
#define _SIPPHONE_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <re.h>
#include <string.h>

#define ENABLE_baresip 1

typedef void (*TypeGetNetworkAddress) (char *local_ip, size_t maxLen,
										char *gw, size_t maxLenGw);

typedef void (*TypeCmdResponse) (const char *topic, const char *msg);

int sipPhoneInit(TypeGetNetworkAddress gCbGetNetworkAddress);

void sipHandleCommand(TypeCmdResponse cbCmdResponse, const char *deviceId, const char *msg);

#ifdef __cplusplus
}
#endif

#endif // _SIPPHONE_H
