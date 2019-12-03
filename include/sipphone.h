
#ifndef _SIPPHONE_H
#define _SIPPHONE_H

#include <string.h>
#include <PubSubClient.h>

#ifdef __cplusplus
extern "C"
{
#endif

#define ENABLE_baresip 1

typedef void (*TypeGetNetworkAddress) (char *local_ip, size_t maxLen,
										char *gw, size_t maxLenGw);

int sipPhoneInit(TypeGetNetworkAddress gCbGetNetworkAddress);

void sipHandleCommand(PubSubClient* mqttClient, String mqtt_id, String msg);

#ifdef __cplusplus
}
#endif

#endif // _SIPPHONE_H
