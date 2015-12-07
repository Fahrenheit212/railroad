#include <stdlib.h>
#include <map.h>
#include <inipars.h>
#include "config.h"
#include "cfg_intern.h"


void ConfigAddIntVal(ConfigStruct *Data, CfgIntValues ValueTyp, int Value)
{  char *p;
   IniValue *ValuePtr;

   switch (ValueTyp)
   {
      case CfgPortVal:
         p = INI_STR_PORT;
         break;
      case CfgUdpBcVal:
         p = INI_STR_UDP_BC;
         break;
      case CfgForkVal:
         p = INI_STR_FORK;
         break;
      case CfgTraceVal:
         p = INI_STR_TRACE;
         break;
      case CfgVerboseVal:
         p = INI_STR_VERBOSE;
         break;
      case CfgUsageVal:
         p = INI_STR_USAGE;
         break;
      case CfgZentraleVal:
         p = INI_STR_ZENTRALE;
         break;
   }
   ValuePtr = (IniValue *)MapGet(ConfigGetConfig(Data), (MapKeyType)p);
   if (ValuePtr == (IniValue *)NULL)
   {
      ValuePtr = malloc(sizeof(IniValue));
      ValuePtr->DataType = IniParsInt;
      ValuePtr->IntValue = Value;
      ValuePtr->StringValue[0] = '\0';
      MapSet(ConfigGetConfig(Data), (MapKeyType)strdup(p),
             (MapDataType)ValuePtr);
   }
   else
   {
      ValuePtr->DataType = IniParsInt;
      ValuePtr->IntValue = Value;
      ValuePtr->StringValue[0] = '\0';
   }
}
