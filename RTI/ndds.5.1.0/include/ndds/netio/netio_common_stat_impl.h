/* (c) Copyright, Real-Time Innovations, Inc. 2003-2009. All rights reserved. */
/*
 * @(#)netio_common_stat_impl.h    generated by: makeheader    Sat Nov 23 02:38:30 2013
 *
 *		built from:	common_stat_impl.ifc
 */

#ifndef netio_common_stat_impl_h
#define netio_common_stat_impl_h



#ifndef osapi_bufferUtils_h
  #include "osapi/osapi_bufferUtils.h"
#endif
#ifndef reda_log_h
  #include "reda/reda_log.h"
#endif
#ifndef reda_worker_h
  #include "reda/reda_worker.h"
#endif

#ifdef __cplusplus
    extern "C" {
#endif

extern RTINetioDllVariable 
struct REDAObjectPerWorker *RTI_NETIO_STAT_PER_WORKER;


#define RTINetioWorkerStat_getStorageLazy(statPtr, worker) \
    ( *(statPtr) = (struct RTINetioWorkerStat *) \
        REDAWorker_assertObject(worker, RTI_NETIO_STAT_PER_WORKER) )



#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* netio_common_stat_impl_h */
