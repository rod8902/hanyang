/* (c) Copyright, Real-Time Innovations, Inc. 2003-2009. All rights reserved. */
/*
 * @(#)dds_c_flowcontroller.h    generated by: makeheader    Sat Nov 23 02:39:23 2013
 *
 *		built from:	flowcontroller.ifc
 */

#ifndef dds_c_flowcontroller_h
#define dds_c_flowcontroller_h



#include "dds_c/dds_c_common.h"
#include "dds_c/dds_c_infrastructure.h"

#ifdef __cplusplus
    extern "C" {
#endif

 extern DDSCDllVariable char *DDS_DEFAULT_FLOW_CONTROLLER_NAME;

 extern DDSCDllVariable char *DDS_FIXED_RATE_FLOW_CONTROLLER_NAME;

 extern DDSCDllVariable char *DDS_ON_DEMAND_FLOW_CONTROLLER_NAME;

typedef enum {
    /*e \dref_FlowControllerSchedulingPolicy_RR_FLOW_CONTROLLER_SCHED_POLICY
     */
    DDS_RR_FLOW_CONTROLLER_SCHED_POLICY,
    /*e \dref_FlowControllerSchedulingPolicy_EDF_FLOW_CONTROLLER_SCHED_POLICY
     */
    DDS_EDF_FLOW_CONTROLLER_SCHED_POLICY,
    /*e \dref_FlowControllerSchedulingPolicy_HPF_FLOW_CONTROLLER_SCHED_POLICY
     */
    DDS_HPF_FLOW_CONTROLLER_SCHED_POLICY
} DDS_FlowControllerSchedulingPolicy;

struct DDS_FlowControllerTokenBucketProperty_t {
    /*e \dref_FlowControllerTokenBucketProperty_t_max_tokens
     */
    DDS_Long max_tokens;
    /*e \dref_FlowControllerTokenBucketProperty_t_tokens_added_per_period
     */
    DDS_Long tokens_added_per_period;
    /*e \dref_FlowControllerTokenBucketProperty_t_tokens_leaked_per_period
     */
    DDS_Long tokens_leaked_per_period;
    /*e \dref_FlowControllerTokenBucketProperty_t_period
     */
    struct DDS_Duration_t period;
    /*e \dref_FlowControllerTokenBucketProperty_t_bytes_per_token
     */
    DDS_Long bytes_per_token;
};

struct DDS_FlowControllerProperty_t {
    /*e \dref_FlowControllerProperty_t_scheduling_policy
     */
    DDS_FlowControllerSchedulingPolicy scheduling_policy;
    /*e \dref_FlowControllerProperty_t_token_bucket
     */
    struct DDS_FlowControllerTokenBucketProperty_t token_bucket;
    /*i \idref_FlowControllerProperty_t_is_vendor_specific
     */
    DDS_Boolean is_vendor_specific;
};


#define DDS_FlowControllerProperty_t_INITIALIZER   {  \
    DDS_EDF_FLOW_CONTROLLER_SCHED_POLICY,  \
    {  \
        -1L,  \
        -1L,  \
        0,  \
        { 1, 0 },  \
        -1L  \
    }, \
    DDS_BOOLEAN_FALSE \
}


typedef struct DDS_FlowControllerImpl DDS_FlowController;


extern	DDS_ReturnCode_t DDS_FlowControllerProperty_copy(
    struct DDS_FlowControllerProperty_t* out,
    const struct DDS_FlowControllerProperty_t* in);

extern DDSCDllExport 
const char* DDS_FlowController_get_name(
    DDS_FlowController* self);

extern DDSCDllExport 
DDS_DomainParticipant* DDS_FlowController_get_participant(DDS_FlowController* self);

extern DDSCDllExport
DDS_ReturnCode_t DDS_FlowController_set_property(
    DDS_FlowController *self, const struct DDS_FlowControllerProperty_t *prop);

extern DDSCDllExport
DDS_ReturnCode_t DDS_FlowController_get_property(
    DDS_FlowController *self, struct DDS_FlowControllerProperty_t *prop);

extern DDSCDllExport
DDS_ReturnCode_t DDS_FlowController_trigger_flow(
    DDS_FlowController *self);

extern DDSCDllExport
void *DDS_FlowController_assert_user_objectI(DDS_FlowController *self);

extern DDSCDllExport
void *DDS_FlowController_get_user_objectI(DDS_FlowController *self);


#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* dds_c_flowcontroller_h */
