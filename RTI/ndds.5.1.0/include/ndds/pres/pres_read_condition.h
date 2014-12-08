/* (c) Copyright, Real-Time Innovations, Inc. 2003-2009. All rights reserved. */
/*
 * @(#)pres_read_condition.h    generated by: makeheader    Sat Nov 23 02:38:53 2013
 *
 *		built from:	read_condition.ifc
 */

#ifndef pres_read_condition_h
#define pres_read_condition_h


 #ifndef pres_dll_h
    #include "pres/pres_dll.h"
 #endif
 #ifndef osapi_type_h
    #include "osapi/osapi_type.h"
 #endif
 #ifndef osapi_ntptime_h
    #include "osapi/osapi_ntptime.h"
 #endif
 #ifndef reda_worker_h
    #include "reda/reda_worker.h"
 #endif
 #ifndef pres_common_h
    #include "pres/pres_common.h"
 #endif
 #ifndef pres_psService_h
    #include "pres/pres_psService.h"
 #endif
 #ifndef pres_condition_h
  #include "pres/pres_condition.h"
 #endif

#ifdef __cplusplus
    extern "C" {
#endif


struct PRESPsReadConditionManagementObject {
    RTI_UINT16 current;     /* bitfield of states represented in queues */
    RTI_UINT16 orders;      /* bitfield of states of interest to conditions */
    RTI_UINT16 triggered;   /* bitfield of states that have been triggered */
};

extern PRESDllExport struct PRESReadCondition *
PRESPsReader_createReadCondition(struct PRESPsReader *me,
                  PRESSampleStateMask sMask,
                  PRESViewStateMask vMask,
                  PRESInstanceStateMask iMask,
                  struct REDAWorker* worker);

extern PRESDllExport int
PRESPsReader_deleteReadCondition(struct PRESPsReader *me, 
                  struct PRESReadCondition *self,
                  struct REDAWorker* worker);

extern PRESDllExport void*
PRESPsReadCondition_getUserObject(struct PRESReadCondition *self,
                  struct REDAWorker* worker);

extern PRESDllExport PRESSampleStateMask
PRESPsReadCondition_getSampleStateMask(struct PRESReadCondition* readCondition);

extern PRESDllExport PRESViewStateMask
PRESPsReadCondition_getViewStateMask(struct PRESReadCondition* readCondition);

extern PRESDllExport PRESInstanceStateMask
PRESPsReadCondition_getInstanceStateMask(struct PRESReadCondition* readCondition);

extern PRESDllExport struct PRESPsReader *
PRESPsReadCondition_getDataReader(struct PRESReadCondition* readCondition);

extern PRESDllExport PRESSampleStateMask
PRESPsIndexCondition_getSampleStateMask(struct PRESCondition* presCondition);

extern PRESDllExport PRESViewStateMask
PRESPsIndexCondition_getViewStateMask(struct PRESCondition* presCondition);

extern PRESDllExport PRESInstanceStateMask
PRESPsIndexCondition_getInstanceStateMask(struct PRESCondition* indexCondition);

extern PRESDllExport RTIBool
PRESPsReader_readWCondition(struct PRESPsReader *me, int *successReason,
                  void ***dataArray, int *dataCount,
                  struct PRESLoanedSampleInfo ***infoArray, int *infoCount,
                  int maxCount, 
                  struct PRESCondition* readCondition,
                  struct REDAWorker *worker);

extern PRESDllExport RTIBool
PRESPsReader_takeWCondition(struct PRESPsReader *me, int *successReason,
                  void ***dataArray, int *dataCount,
                  struct PRESLoanedSampleInfo ***infoArray, int *infoCount,
                  int maxCount, 
                  struct PRESCondition* readCondition,
                  struct REDAWorker *worker);

extern PRESDllExport RTIBool
PRESPsReader_readInstanceWCondition(struct PRESPsReader *me,
                  int *successReason,  int *failReason, 
                  void ***dataArray, int *dataCount,
                  struct PRESLoanedSampleInfo ***infoArray, int *infoCount,
                  int maxCount,  const struct PRESInstanceHandle *handle,
                  struct PRESReadCondition* readCondition,
                  struct REDAWorker *worker);

extern PRESDllExport RTIBool
PRESPsReader_takeInstanceWCondition(struct PRESPsReader *me,
                  int *successReason,  int *failReason, 
                  void ***dataArray, int *dataCount,
                  struct PRESLoanedSampleInfo ***infoArray, int *infoCount,
                  int maxCount,  const struct PRESInstanceHandle *handle,
                  struct PRESReadCondition* readCondition,
                  struct REDAWorker *worker);

extern PRESDllExport RTIBool
PRESPsReader_readNextInstanceWCondition(struct PRESPsReader *me,
                  int *successReason, void ***dataArray, int *dataCount,
                  struct PRESLoanedSampleInfo ***infoArray, int *infoCount,
                  int maxCount,  const struct PRESInstanceHandle *handle,
                  struct PRESReadCondition* readCondition,
                  struct REDAWorker *worker);

extern PRESDllExport RTIBool
PRESPsReader_takeNextInstanceWCondition(struct PRESPsReader *me,
                  int *successReason, void ***dataArray, int *dataCount,
                  struct PRESLoanedSampleInfo ***infoArray, int *infoCount,
                  int maxCount,  const struct PRESInstanceHandle *handle,
                  struct PRESReadCondition* readCondition,
                  struct REDAWorker *worker);

extern PRESDllExport void*
PRESPsReadCondition_getUserObject(struct PRESReadCondition *self,
                  struct REDAWorker* worker);

extern PRESDllExport struct PRESReadCondition *
PRESPsReader_createQueryCondition(struct PRESPsReader *me,
                  PRESSampleStateMask sMask,
                  PRESViewStateMask vMask,
                  PRESInstanceStateMask iMask,
                  const char *filter_expression,
                  const char **filter_parameters,
                  RTI_INT32 parameter_length,
                  const char *filter_name_in,
                  struct  REDAWorker* worker);

extern PRESDllExport const char *
PRESPsQueryCondition_getQueryExpression(struct PRESReadCondition *self,
                  struct  REDAWorker* worker);

extern PRESDllExport const char **
PRESPsQueryCondition_getQueryParameters(struct PRESReadCondition *self,
                  RTI_INT32 *paramLength,
                  int *failReason,
                  struct  REDAWorker* worker);

extern PRESDllExport RTIBool
PRESPsQueryCondition_setQueryParameters(struct PRESReadCondition *self,
                  int *failReason,
                  const char **filter_parameters,
                  RTI_INT32 parameter_length,
                  struct  REDAWorker* worker);

extern PRESDllExport RTIBool
PRESPsReader_createIndex(
    struct PRESPsReader *me,
    const char * index_name,
    REDAOrderedDataTypeCompareFunction compareFnc,
    struct REDAWorker* worker);

extern PRESDllExport RTIBool
PRESPsReader_deleteIndex(
    struct PRESPsReader *me,
    const char * index_name,
    struct REDAWorker* worker);

extern PRESDllExport struct PRESCondition * 
PRESPsReader_createIndexCondition(
    struct PRESPsReader *me,
    const char * indexName,
    struct PRESLoanedSampleInfo * presSampleInfo,
    PRESSampleStateMask sMask,
    PRESViewStateMask vMask,
    PRESInstanceStateMask iMask,
    struct REDAWorker* worker);

extern PRESDllExport int
PRESPsReader_deleteIndexCondition(
    struct PRESPsReader *me,
    struct PRESCondition * presCondition,
    struct REDAWorker* worker);


#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* pres_read_condition_h */
