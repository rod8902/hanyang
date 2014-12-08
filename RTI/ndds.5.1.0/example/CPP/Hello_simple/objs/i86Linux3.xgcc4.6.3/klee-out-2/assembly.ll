; ModuleID = 'objs/i86Linux3.xgcc4.6.3/HelloPublisher.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-f128:128:128-n8:16:32"
target triple = "i386-pc-linux-gnu"

%0 = type { i32, void ()* }
%struct..1__pthread_mutex_s = type { i32, i32, i32, i32, i32, %struct.DDS_OwnershipQosPolicy }
%struct.DDSDataReaderListener = type { %struct.DDSDomainParticipantFactory }
%struct.DDSDataWriter = type { %struct.DDSDataReaderListener, %struct.DDSDataWriter* }
%struct.DDSDomainParticipantFactory = type { i32 (...)** }
%struct.DDSDomainParticipantListener = type { %struct.DDSDataReaderListener, %struct.DDSPublisherListener, %struct.DDSPublisherListener }
%struct.DDSPublisherListener = type { %struct.DDSDataReaderListener }
%struct.DDSStringDataWriter = type { %struct.DDSDataWriter }
%struct.DDSTopic = type { %struct.DDSDataReaderListener, %struct.DDSDomainParticipantFactory }
%struct.DDS_AllocationSettings_t = type { i32, i32, i32 }
%struct.DDS_AsynchronousPublisherQosPolicy = type { i8, %struct.DDS_ThreadSettings_t, i8, %struct.DDS_ThreadSettings_t, i32 }
%struct.DDS_AvailabilityQosPolicy = type { i8, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_EndpointGroupSeq }
%struct.DDS_BatchQosPolicy = type { i8, i32, i32, i32, %struct.DDS_Duration_t, %struct.DDS_Duration_t, i8 }
%struct.DDS_BuiltinTopicReaderResourceLimits_t = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i8 }
%struct.DDS_ChannelSettingsSeq = type { i8, %struct.DDS_ChannelSettings_t*, %struct.DDS_ChannelSettings_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_ChannelSettings_t = type { %struct.DDS_TransportMulticastSettingsSeq, i8*, i32 }
%struct.DDS_DataWriterProtocolQosPolicy = type { %struct.DDS_GUID_t, i32, i8, i8, i8, i8, %struct.DDS_RtpsReliableWriterProtocol_t, %struct.DDS_Duration_t, i8 }
%struct.DDS_DataWriterQos = type { %struct.DDS_DurabilityQosPolicy, %struct.DDS_DurabilityServiceQosPolicy, %struct.DDS_DeadlineQosPolicy, %struct.DDS_DeadlineQosPolicy, %struct.DDS_LivelinessQosPolicy, %struct.DDS_ReliabilityQosPolicy, %struct.DDS_Desti
%struct.DDS_DataWriterResourceLimitsQosPolicy = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.DDS_DatabaseQosPolicy = type { %struct.DDS_ThreadSettings_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, i32, i32, i32, i32, i32 }
%struct.DDS_DeadlineQosPolicy = type { %struct.DDS_Duration_t }
%struct.DDS_DestinationOrderQosPolicy = type { i32, i32, %struct.DDS_Duration_t }
%struct.DDS_DiscoveryBuiltinReaderFragmentationResourceLimits_t = type { i8, i32, i32, i32, i32, i8 }
%struct.DDS_DiscoveryConfigQosPolicy = type { %struct.DDS_Duration_t, %struct.DDS_Duration_t, i32, %struct.DDS_Duration_t, i32, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_BuiltinTopicReaderResourceLimits_t, %struct.DDS_RtpsReliableReader
%struct.DDS_DiscoveryQosPolicy = type { %struct.DDS_StringSeq, %struct.DDS_StringSeq, %struct.DDS_StringSeq, i32, i8 }
%struct.DDS_DomainParticipantProtocolQosPolicy = type { i8 }
%struct.DDS_DomainParticipantQos = type { %struct.DDS_TopicDataQosPolicy, %struct.DDS_DomainParticipantProtocolQosPolicy, %struct.DDS_WireProtocolQosPolicy, %struct.DDS_OwnershipQosPolicy, %struct.DDS_TransportUnicastQosPolicy, %struct.DDS_DiscoveryQosPo
%struct.DDS_DomainParticipantResourceLimitsQosPolicy = type { %struct.DDS_AllocationSettings_t, %struct.DDS_AllocationSettings_t, %struct.DDS_AllocationSettings_t, %struct.DDS_AllocationSettings_t, %struct.DDS_AllocationSettings_t, %struct.DDS_Allocation
%struct.DDS_DurabilityQosPolicy = type { i32, i8 }
%struct.DDS_DurabilityServiceQosPolicy = type { %struct.DDS_Duration_t, i32, i32, i32, i32, i32 }
%struct.DDS_Duration_t = type { i32, i32 }
%struct.DDS_EncapsulationIdSeq = type { i8, i16*, i16**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_EndpointGroupSeq = type { i8, %struct.DDS_EndpointGroup_t*, %struct.DDS_EndpointGroup_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_EndpointGroup_t = type { i8*, i32 }
%struct.DDS_EntityNameQosPolicy = type { i8*, i8* }
%struct.DDS_EventQosPolicy = type { %struct.DDS_ThreadSettings_t, i32, i32 }
%struct.DDS_ExclusiveAreaQosPolicy = type { i8, i32 }
%struct.DDS_GUID_t = type { [16 x i8] }
%struct.DDS_InstanceHandle_t = type { %struct.MIGRtpsKeyHash, i32 }
%struct.DDS_LivelinessQosPolicy = type { i32, %struct.DDS_Duration_t }
%struct.DDS_LongSeq = type { i8, i32*, i32**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_MultiChannelQosPolicy = type { %struct.DDS_ChannelSettingsSeq, i8* }
%struct.DDS_OctetSeq = type { i8, i8*, i8**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_OwnershipQosPolicy = type { i32 }
%struct.DDS_PropertyQosPolicy = type { %struct.DDS_PropertySeq }
%struct.DDS_PropertySeq = type { i8, %struct.DDS_Property_t*, %struct.DDS_Property_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_Property_t = type { i8*, i8*, i8 }
%struct.DDS_PublishModeQosPolicy = type { i32, i8*, i32 }
%struct.DDS_ReceiverPoolQosPolicy = type { %struct.DDS_ThreadSettings_t, i32, i32, i32, i32, i8 }
%struct.DDS_ReliabilityQosPolicy = type { i32, %struct.DDS_Duration_t, i32 }
%struct.DDS_ResourceLimitsQosPolicy = type { i32, i32, i32, i32, i32, i32 }
%struct.DDS_RtpsReliableReaderProtocol_t = type { %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, i32, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, i32 }
%struct.DDS_RtpsReliableWriterProtocol_t = type { i32, i32, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, i32, i32, i8, i32, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, i32, %s
%struct.DDS_RtpsWellKnownPorts_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.DDS_SeqElementTypeAllocationParams_t = type { i8, i8, i8 }
%struct.DDS_SeqElementTypeDeallocationParams_t = type { i8, i8 }
%struct.DDS_StringSeq = type { i8, i8**, i8***, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t }
%struct.DDS_ThreadSettings_t = type { i32, i32, i32, %struct.DDS_LongSeq, i32 }
%struct.DDS_TopicDataQosPolicy = type { %struct.DDS_OctetSeq }
%struct.DDS_TopicQos = type { %struct.DDS_TopicDataQosPolicy, %struct.DDS_DurabilityQosPolicy, %struct.DDS_DurabilityServiceQosPolicy, %struct.DDS_DeadlineQosPolicy, %struct.DDS_DeadlineQosPolicy, %struct.DDS_LivelinessQosPolicy, %struct.DDS_ReliabilityQ
%struct.DDS_TransportEncapsulationQosPolicy = type { %struct.DDS_TransportEncapsulationSettingsSeq }
%struct.DDS_TransportEncapsulationSettingsSeq = type { i8, %struct.DDS_TransportEncapsulationSettings_t*, %struct.DDS_TransportEncapsulationSettings_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDea
%struct.DDS_TransportEncapsulationSettings_t = type { %struct.DDS_StringSeq, %struct.DDS_EncapsulationIdSeq }
%struct.DDS_TransportMulticastMappingQosPolicy = type { %struct.DDS_TransportMulticastMappingSeq }
%struct.DDS_TransportMulticastMappingSeq = type { i8, %struct.DDS_TransportMulticastMapping_t*, %struct.DDS_TransportMulticastMapping_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams
%struct.DDS_TransportMulticastMapping_t = type { i8*, i8*, %struct.DDS_EntityNameQosPolicy }
%struct.DDS_TransportMulticastSettingsSeq = type { i8, %struct.DDS_TransportMulticastSettings_t*, %struct.DDS_TransportMulticastSettings_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationPar
%struct.DDS_TransportMulticastSettings_t = type { %struct.DDS_StringSeq, i8*, i32 }
%struct.DDS_TransportSelectionQosPolicy = type { %struct.DDS_StringSeq }
%struct.DDS_TransportUnicastQosPolicy = type { %struct.DDS_TransportUnicastSettingsSeq }
%struct.DDS_TransportUnicastSettingsSeq = type { i8, %struct.DDS_TransportUnicastSettings_t*, %struct.DDS_TransportUnicastSettings_t**, i32, i32, i32, i8*, i8*, %struct.DDS_SeqElementTypeAllocationParams_t, %struct.DDS_SeqElementTypeDeallocationParams_t 
%struct.DDS_TransportUnicastSettings_t = type { %struct.DDS_StringSeq, i32 }
%struct.DDS_UserObjectQosPolicy = type { %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_t, %struct.DDS_Duration_
%struct.DDS_WireProtocolQosPolicy = type { i32, i32, i32, i32, %struct.DDS_RtpsWellKnownPorts_t, i32, i32 }
%struct.DDS_WriterDataLifecycleQosPolicy = type { i8, %struct.DDS_Duration_t }
%struct.MIGRtpsKeyHash = type { [16 x i8], i32 }
%"struct.std::basic_ios<char,std::char_traits<char> >" = type { %"struct.std::ios_base", %"struct.std::basic_ostream<char,std::char_traits<char> >"*, i8, i8, %"struct.std::basic_streambuf<char,std::char_traits<char> >"*, %"struct.std::ctype<char>"*, %"st
%"struct.std::basic_istream<char,std::char_traits<char> >" = type { i32 (...)**, i32, %"struct.std::basic_ios<char,std::char_traits<char> >" }
%"struct.std::basic_ostream<char,std::char_traits<char> >" = type { i32 (...)**, %"struct.std::basic_ios<char,std::char_traits<char> >" }
%"struct.std::basic_streambuf<char,std::char_traits<char> >" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.std::locale" }
%"struct.std::ctype<char>" = type { %"struct.std::locale::facet", i32*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%"struct.std::ios_base" = type { i32 (...)**, i32, i32, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %struct.DDS_EndpointGroup_t, [8 x %struct.DDS_EndpointGroup_t], i32, %struct.DDS_EndpointGroup_t*, %"struct.std::locale" }
%"struct.std::ios_base::Init" = type <{ i8 }>
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"struct.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::locale" = type { %"struct.std::locale::_Impl"* }
%"struct.std::locale::_Impl" = type { i32, %"struct.std::locale::facet"**, i32, %"struct.std::locale::facet"**, i8** }
%"struct.std::locale::facet" = type { i32 (...)**, i32 }
%"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >" = type { %"struct.std::locale::facet" }
%union.pthread_attr_t = type { i32, [8 x i32] }
%union.pthread_mutex_t = type { %struct..1__pthread_mutex_s }

@_ZStL8__ioinit = internal unnamed_addr global %"struct.std::ios_base::Init" zeroinitializer
@__dso_handle = external unnamed_addr global i8*
@DDS_PARTICIPANT_QOS_DEFAULT = external unnamed_addr global %struct.DDS_DomainParticipantQos
@_ZSt4cerr = external unnamed_addr global %"struct.std::basic_ostream<char,std::char_traits<char> >"
@.str = private unnamed_addr constant [37 x i8] c"Unable to create domain participant.\00", align 4
@.str1 = private unnamed_addr constant [13 x i8] c"Hello, World\00", align 1
@DDS_TOPIC_QOS_DEFAULT = external unnamed_addr global %struct.DDS_TopicQos
@.str2 = private unnamed_addr constant [24 x i8] c"Unable to create topic.\00", align 1
@DDS_DATAWRITER_QOS_DEFAULT = external unnamed_addr global %struct.DDS_DataWriterQos
@.str3 = private unnamed_addr constant [30 x i8] c"Unable to create data writer.\00", align 1
@.str4 = private unnamed_addr constant [36 x i8] c"DDS_StringDataWriter_narrow failed.\00", align 4
@_ZSt4cout = external unnamed_addr global %"struct.std::basic_ostream<char,std::char_traits<char> >"
@.str5 = private unnamed_addr constant [21 x i8] c"Ready to write data.\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"When the subscriber is ready, you can start writing.\00", align 4
@.str7 = private unnamed_addr constant [73 x i8] c"Press CTRL+C to terminate or enter an empty line to do a clean shutdown.\00", align 4
@.str8 = private unnamed_addr constant [24 x i8] c"Please type a message> \00", align 1
@_ZSt3cin = external unnamed_addr global %"struct.std::basic_istream<char,std::char_traits<char> >"
@DDS_HANDLE_NIL = external unnamed_addr constant %struct.DDS_InstanceHandle_t
@.str9 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"Write failed: \00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"Exiting...\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"Deletion failed.\00", align 1
@llvm.global_ctors = appending unnamed_addr global [1 x %0] [%0 { i32 65535, void ()* @_GLOBAL__I_main }]
@.str13 = private constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str114 = private constant [15 x i8] c"divide by zero\00", align 1
@.str215 = private constant [8 x i8] c"div.err\00", align 1
@.str316 = private constant [8 x i8] c"IGNORED\00", align 1
@.str14 = private constant [16 x i8] c"overshift error\00", align 1
@.str25 = private constant [14 x i8] c"overshift.err\00", align 1
@.str617 = private constant [13 x i8] c"klee_range.c\00", align 1
@.str17 = private constant [14 x i8] c"invalid range\00", align 1
@.str28 = private constant [5 x i8] c"user\00", align 1

@_ZL20__gthrw_pthread_oncePiPFvvE = alias weak i32 (i32*, void ()*)* @pthread_once
@_ZL27__gthrw_pthread_getspecificj = alias weak i8* (i32)* @pthread_getspecific
@_ZL27__gthrw_pthread_setspecificjPKv = alias weak i32 (i32, i8*)* @pthread_setspecific
@_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_ = alias weak i32 (i32*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create
@_ZL22__gthrw_pthread_cancelm = alias weak i32 (i32)* @pthread_cancel
@_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t = alias weak i32 (%union.pthread_mutex_t*)* @pthread_mutex_lock
@_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t = alias weak i32 (%union.pthread_mutex_t*)* @pthread_mutex_trylock
@_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t = alias weak i32 (%union.pthread_mutex_t*)* @pthread_mutex_unlock
@_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t = alias weak i32 (%union.pthread_mutex_t*, %struct.DDS_OwnershipQosPolicy*)* @pthread_mutex_init
@_ZL26__gthrw_pthread_key_createPjPFvPvE = alias weak i32 (i32*, void (i8*)*)* @pthread_key_create
@_ZL26__gthrw_pthread_key_deletej = alias weak i32 (i32)* @pthread_key_delete
@_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t = alias weak i32 (%struct.DDS_OwnershipQosPolicy*)* @pthread_mutexattr_init
@_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti = alias weak i32 (%struct.DDS_OwnershipQosPolicy*, i32)* @pthread_mutexattr_settype
@_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t = alias weak i32 (%struct.DDS_OwnershipQosPolicy*)* @pthread_mutexattr_destroy

define i32 @main() {
entry:
  call void @klee.ctor_stub()
  %sample = alloca [1024 x i8], align 1
  %0 = call %struct.DDSDomainParticipantFactory* @_ZN27DDSDomainParticipantFactory12get_instanceEv()
  %1 = getelementptr inbounds %struct.DDSDomainParticipantFactory* %0, i32 0, i32 0
  %2 = load i32 (...)*** %1, align 4
  %3 = getelementptr inbounds i32 (...)** %2, i32 24
  %4 = load i32 (...)** %3, align 4
  %5 = bitcast i32 (...)* %4 to %struct.DDSDataReaderListener* (%struct.DDSDomainParticipantFactory*, i32, %struct.DDS_DomainParticipantQos*, %struct.DDSDomainParticipantListener*, i32)*
  %6 = call %struct.DDSDataReaderListener* %5(%struct.DDSDomainParticipantFactory* %0, i32 0, %struct.DDS_DomainParticipantQos* @DDS_PARTICIPANT_QOS_DEFAULT, %struct.DDSDomainParticipantListener* null, i32 0)
  %7 = icmp eq %struct.DDSDataReaderListener* %6, null
  br i1 %7, label %bb, label %bb1

bb:                                               ; preds = %entry
  %8 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, 
  %9 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %8, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std::c
  br label %clean_exit

bb1:                                              ; preds = %entry
  %10 = getelementptr inbounds %struct.DDSDataReaderListener* %6, i32 0, i32 0, i32 0
  %11 = load i32 (...)*** %10, align 4
  %12 = getelementptr inbounds i32 (...)** %11, i32 46
  %13 = load i32 (...)** %12, align 4
  %14 = call i8* @_ZN20DDSStringTypeSupport13get_type_nameEv()
  %15 = bitcast i32 (...)* %13 to %struct.DDSTopic* (%struct.DDSDataReaderListener*, i8*, i8*, %struct.DDS_TopicQos*, %struct.DDSDataReaderListener*, i32)*
  %16 = call %struct.DDSTopic* %15(%struct.DDSDataReaderListener* %6, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i8* %14, %struct.DDS_TopicQos* @DDS_TOPIC_QOS_DEFAULT, %struct.DDSDataReaderListener* null, i32 0)
  %17 = icmp eq %struct.DDSTopic* %16, null
  br i1 %17, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %18 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0
  %19 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %18, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br label %clean_exit

bb3:                                              ; preds = %bb1
  %20 = load i32 (...)*** %10, align 4
  %21 = getelementptr inbounds i32 (...)** %20, i32 94
  %22 = load i32 (...)** %21, align 4
  %23 = bitcast i32 (...)* %22 to %struct.DDSDataWriter* (%struct.DDSDataReaderListener*, %struct.DDSTopic*, %struct.DDS_DataWriterQos*, %struct.DDSDataReaderListener*, i32)*
  %24 = call %struct.DDSDataWriter* %23(%struct.DDSDataReaderListener* %6, %struct.DDSTopic* %16, %struct.DDS_DataWriterQos* @DDS_DATAWRITER_QOS_DEFAULT, %struct.DDSDataReaderListener* null, i32 0)
  %25 = icmp eq %struct.DDSDataWriter* %24, null
  br i1 %25, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %26 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([30 x i8]* @.str3, i32 0
  %27 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %26, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br label %clean_exit

bb5:                                              ; preds = %bb3
  %28 = call %struct.DDSStringDataWriter* @_ZN19DDSStringDataWriter6narrowEP13DDSDataWriter(%struct.DDSDataWriter* %24)
  %29 = icmp eq %struct.DDSStringDataWriter* %28, null
  br i1 %29, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  %30 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([36 x i8]* @.str4, i32 0
  %31 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %30, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br label %clean_exit

bb7:                                              ; preds = %bb5
  %32 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0
  %33 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %32, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  %34 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr inbounds ([53 x i8]* @.str6, i32 0
  %35 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %34, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  %36 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr inbounds ([73 x i8]* @.str7, i32 0
  %37 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %36, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  %38 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %37, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  %39 = getelementptr inbounds [1024 x i8]* %sample, i32 0, i32 0
  %40 = getelementptr inbounds %struct.DDSStringDataWriter* %28, i32 0, i32 0, i32 0, i32 0, i32 0
  br label %bb8

bb8:                                              ; preds = %bb11, %bb7
  %41 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr inbounds ([24 x i8]* @.str8, i32 0
  %42 = call %"struct.std::basic_istream<char,std::char_traits<char> >"* @_ZNSi7getlineEPci(%"struct.std::basic_istream<char,std::char_traits<char> >"* @_ZSt3cin, i8* %39, i32 1023)
  %43 = getelementptr inbounds %"struct.std::basic_istream<char,std::char_traits<char> >"* %42, i32 0, i32 0
  %44 = load i32 (...)*** %43, align 4
  %45 = getelementptr inbounds i32 (...)** %44, i32 -3
  %46 = bitcast i32 (...)** %45 to i32*
  %47 = load i32* %46, align 4
  %48 = ptrtoint %"struct.std::basic_istream<char,std::char_traits<char> >"* %42 to i32
  %49 = add i32 %47, %48
  %50 = inttoptr i32 %49 to %"struct.std::basic_ios<char,std::char_traits<char> >"*
  %51 = call zeroext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"struct.std::basic_ios<char,std::char_traits<char> >"* %50)
  %toBool = icmp eq i8 %51, 0
  br i1 %toBool, label %bb9, label %clean_exit

bb9:                                              ; preds = %bb8
  %52 = load i32 (...)*** %40, align 4
  %53 = getelementptr inbounds i32 (...)** %52, i32 60
  %54 = load i32 (...)** %53, align 4
  %55 = bitcast i32 (...)* %54 to i32 (%struct.DDSStringDataWriter*, i8*, %struct.DDS_InstanceHandle_t*)*
  %56 = call i32 %55(%struct.DDSStringDataWriter* %28, i8* %39, %struct.DDS_InstanceHandle_t* @DDS_HANDLE_NIL)
  call void @klee_make_symbolic(i8* %39, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0))
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %bb11, label %bb10

bb10:                                             ; preds = %bb9
  %58 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([15 x i8]* @.str10, i32 
  %59 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEi(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %58, i32 %56)
  %60 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %59, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br label %bb11

bb11:                                             ; preds = %bb10, %bb9
  %61 = load i8* %39, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %clean_exit, label %bb8

clean_exit:                                       ; preds = %bb11, %bb8, %bb6, %bb4, %bb2, %bb
  %main_result.0 = phi i32 [ 1, %bb ], [ 1, %bb2 ], [ 1, %bb4 ], [ 1, %bb6 ], [ 0, %bb8 ], [ 0, %bb11 ]
  %63 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cout, i8* getelementptr inbounds ([11 x i8]* @.str11, i32 
  %64 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %63, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br i1 %7, label %bb17, label %bb13

bb13:                                             ; preds = %clean_exit
  %65 = getelementptr inbounds %struct.DDSDataReaderListener* %6, i32 0, i32 0, i32 0
  %66 = load i32 (...)*** %65, align 4
  %67 = getelementptr inbounds i32 (...)** %66, i32 69
  %68 = load i32 (...)** %67, align 4
  %69 = bitcast i32 (...)* %68 to i32 (%struct.DDSDataReaderListener*)*
  %70 = call i32 %69(%struct.DDSDataReaderListener* %6)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %bb15, label %bb14

bb14:                                             ; preds = %bb13
  %72 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([17 x i8]* @.str12, i32 
  %73 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %72, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %main_result.1 = phi i32 [ 1, %bb14 ], [ %main_result.0, %bb13 ]
  %74 = call %struct.DDSDomainParticipantFactory* @_ZN27DDSDomainParticipantFactory12get_instanceEv()
  %75 = getelementptr inbounds %struct.DDSDomainParticipantFactory* %74, i32 0, i32 0
  %76 = load i32 (...)*** %75, align 4
  %77 = getelementptr inbounds i32 (...)** %76, i32 26
  %78 = load i32 (...)** %77, align 4
  %79 = bitcast i32 (...)* %78 to i32 (%struct.DDSDomainParticipantFactory*, %struct.DDSDataReaderListener*)*
  %80 = call i32 %79(%struct.DDSDomainParticipantFactory* %74, %struct.DDSDataReaderListener* %6)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %bb17, label %bb16

bb16:                                             ; preds = %bb15
  %82 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4cerr, i8* getelementptr inbounds ([17 x i8]* @.str12, i32 
  %83 = call %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"* %82, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std:
  br label %bb17

bb17:                                             ; preds = %bb16, %bb15, %clean_exit
  %main_result.2 = phi i32 [ 1, %bb16 ], [ %main_result.1, %bb15 ], [ %main_result.0, %clean_exit ]
  ret i32 %main_result.2
}

define internal void @_GLOBAL__I_main() {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"struct.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* @__tcf_0, i8* null, i8* bitcast (i8** @__dso_handle to i8*)) nounwind
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"struct.std::ios_base::Init"*)

declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) nounwind

define internal void @__tcf_0(i8* nocapture %unnamed_arg) {
entry:
  tail call void @_ZNSt8ios_base4InitD1Ev(%"struct.std::ios_base::Init"* @_ZStL8__ioinit)
  ret void
}

declare void @_ZNSt8ios_base4InitD1Ev(%"struct.std::ios_base::Init"*)

declare %struct.DDSDomainParticipantFactory* @_ZN27DDSDomainParticipantFactory12get_instanceEv()

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"struct.std::basic_ostream<char,std::char_traits<char> >"*, i8*)

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEPFRSoS_E(%"struct.std::basic_ostream<char,std::char_traits<char> >"*, %"struct.std::basic_ostream<char,std::char_traits<char> >"* (%"struct.std::basic_ostream<char,std::char_tra

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"struct.std::basic_ostream<char,std::char_traits<char> >"*)

declare i8* @_ZN20DDSStringTypeSupport13get_type_nameEv()

declare %struct.DDSStringDataWriter* @_ZN19DDSStringDataWriter6narrowEP13DDSDataWriter(%struct.DDSDataWriter*)

declare %"struct.std::basic_istream<char,std::char_traits<char> >"* @_ZNSi7getlineEPci(%"struct.std::basic_istream<char,std::char_traits<char> >"*, i8*, i32)

declare zeroext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv(%"struct.std::basic_ios<char,std::char_traits<char> >"*)

declare void @klee_make_symbolic(i8*, i32, i8*)

declare %"struct.std::basic_ostream<char,std::char_traits<char> >"* @_ZNSolsEi(%"struct.std::basic_ostream<char,std::char_traits<char> >"*, i32)

declare extern_weak i32 @pthread_once(i32*, void ()*) unnamed_addr

declare extern_weak i8* @pthread_getspecific(i32) unnamed_addr

declare extern_weak i32 @pthread_setspecific(i32, i8*) unnamed_addr

declare extern_weak i32 @pthread_create(i32*, %union.pthread_attr_t*, i8* (i8*)*, i8*) unnamed_addr

declare extern_weak i32 @pthread_cancel(i32) unnamed_addr

declare extern_weak i32 @pthread_mutex_lock(%union.pthread_mutex_t*) unnamed_addr

declare extern_weak i32 @pthread_mutex_trylock(%union.pthread_mutex_t*) unnamed_addr

declare extern_weak i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) unnamed_addr

declare extern_weak i32 @pthread_mutex_init(%union.pthread_mutex_t*, %struct.DDS_OwnershipQosPolicy*) unnamed_addr

declare extern_weak i32 @pthread_key_create(i32*, void (i8*)*) unnamed_addr

declare extern_weak i32 @pthread_key_delete(i32) unnamed_addr

declare extern_weak i32 @pthread_mutexattr_init(%struct.DDS_OwnershipQosPolicy*) unnamed_addr

declare extern_weak i32 @pthread_mutexattr_settype(%struct.DDS_OwnershipQosPolicy*, i32) unnamed_addr

declare extern_weak i32 @pthread_mutexattr_destroy(%struct.DDS_OwnershipQosPolicy*) unnamed_addr

define void @klee_div_zero_check(i64 %z) nounwind {
entry:
  %0 = icmp eq i64 %z, 0, !dbg !116
  br i1 %0, label %bb, label %return, !dbg !116

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str13, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str215, i32 0, i32 0)) noreturn nounwind, !
  unreachable, !dbg !118

return:                                           ; preds = %entry
  ret void, !dbg !119
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @klee_int(i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %x1 = bitcast i32* %x to i8*, !dbg !120
  call void @klee_make_symbolic(i8* %x1, i32 4, i8* %name) nounwind, !dbg !120
  %0 = load i32* %x, align 4, !dbg !121
  ret i32 %0, !dbg !121
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @klee_overshift_check(i64 %bitWidth, i64 %shift) nounwind {
entry:
  %0 = icmp ult i64 %shift, %bitWidth, !dbg !122
  br i1 %0, label %return, label %bb, !dbg !122

bb:                                               ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str316, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i32 0, i32 0)) noreturn nounwind, !db
  unreachable, !dbg !124

return:                                           ; preds = %entry
  ret void, !dbg !125
}

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind {
entry:
  %x = alloca i32, align 4
  %0 = icmp slt i32 %start, %end, !dbg !126
  br i1 %0, label %bb1, label %bb, !dbg !126

bb:                                               ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str617, i32 0, i32 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0)) noreturn nounwind, !dbg !1
  unreachable, !dbg !127

bb1:                                              ; preds = %entry
  %1 = add nsw i32 %start, 1, !dbg !128
  %2 = icmp eq i32 %1, %end, !dbg !128
  br i1 %2, label %bb8, label %bb3, !dbg !128

bb3:                                              ; preds = %bb1
  %x4 = bitcast i32* %x to i8*, !dbg !129
  call void @klee_make_symbolic(i8* %x4, i32 4, i8* %name) nounwind, !dbg !129
  %3 = icmp eq i32 %start, 0, !dbg !130
  %4 = load i32* %x, align 4, !dbg !131
  br i1 %3, label %bb5, label %bb6, !dbg !130

bb5:                                              ; preds = %bb3
  %5 = icmp ult i32 %4, %end, !dbg !131
  %6 = zext i1 %5 to i32, !dbg !131
  call void @klee_assume(i32 %6) nounwind, !dbg !131
  br label %bb7, !dbg !131

bb6:                                              ; preds = %bb3
  %7 = icmp sge i32 %4, %start, !dbg !132
  %8 = zext i1 %7 to i32, !dbg !132
  call void @klee_assume(i32 %8) nounwind, !dbg !132
  %9 = load i32* %x, align 4, !dbg !133
  %10 = icmp slt i32 %9, %end, !dbg !133
  %11 = zext i1 %10 to i32, !dbg !133
  call void @klee_assume(i32 %11) nounwind, !dbg !133
  br label %bb7, !dbg !133

bb7:                                              ; preds = %bb6, %bb5
  %12 = load i32* %x, align 4, !dbg !134
  br label %bb8, !dbg !134

bb8:                                              ; preds = %bb7, %bb1
  %.0 = phi i32 [ %12, %bb7 ], [ %start, %bb1 ]
  ret i32 %.0, !dbg !135
}

declare void @klee_assume(i32)

define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i32 %len) nounwind {
entry:
  %0 = icmp eq i32 %len, 0, !dbg !136
  br i1 %0, label %bb2, label %bb, !dbg !136

bb:                                               ; preds = %bb, %entry
  %indvar = phi i32 [ %indvar.next, %bb ], [ 0, %entry ]
  %dest.05 = getelementptr i8* %destaddr, i32 %indvar
  %src.06 = getelementptr i8* %srcaddr, i32 %indvar
  %1 = load i8* %src.06, align 1, !dbg !137
  store i8 %1, i8* %dest.05, align 1, !dbg !137
  %indvar.next = add i32 %indvar, 1
  %exitcond1 = icmp eq i32 %indvar.next, %len
  br i1 %exitcond1, label %bb1.bb2_crit_edge, label %bb, !dbg !136

bb1.bb2_crit_edge:                                ; preds = %bb
  %scevgep = getelementptr i8* %destaddr, i32 %len
  br label %bb2

bb2:                                              ; preds = %bb1.bb2_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %bb1.bb2_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !138
}

define internal void @klee.ctor_stub() {
entry:
  call void @_GLOBAL__I_main()
  ret void
}

!llvm.dbg.sp = !{!0, !6, !15, !21, !30, !39, !48, !57}
!llvm.dbg.lv.klee_div_zero_check = !{!67}
!llvm.dbg.lv.klee_int = !{!68, !69}
!llvm.dbg.lv.klee_overshift_check = !{!71, !72}
!llvm.dbg.lv.klee_range = !{!73, !74, !75, !76}
!llvm.dbg.lv.memcpy = !{!78, !79, !80, !81, !85}
!llvm.dbg.lv.memmove = !{!88, !89, !90, !91, !95}
!llvm.dbg.lv.mempcpy = !{!98, !99, !100, !101, !105}
!llvm.dbg.lv.memset = !{!108, !109, !110, !111}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !1, i32 12, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @kle
!1 = metadata !{i32 589865, metadata !"klee_div_zero_check.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_div_zero_check.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compil
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5}
!5 = metadata !{i32 589860, metadata !1, metadata !"long long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589870, i32 0, metadata !7, metadata !"klee_int", metadata !"klee_int", metadata !"klee_int", metadata !7, i32 13, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int} ; [ DW_TAG_subprogram ]
!7 = metadata !{i32 589865, metadata !"klee_int.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !8} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_int.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!9 = metadata !{i32 589845, metadata !7, metadata !"", metadata !7, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 589860, metadata !7, metadata !"int", metadata !7, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 589839, metadata !7, metadata !"", metadata !7, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 589862, metadata !7, metadata !"", metadata !7, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!14 = metadata !{i32 589860, metadata !7, metadata !"char", metadata !7, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589870, i32 0, metadata !16, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !16, i32 20, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64
!16 = metadata !{i32 589865, metadata !"klee_overshift_check.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !17} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_overshift_check.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_comp
!18 = metadata !{i32 589845, metadata !16, metadata !"", metadata !16, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20, metadata !20}
!20 = metadata !{i32 589860, metadata !16, metadata !"long long unsigned int", metadata !16, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 589870, i32 0, metadata !22, metadata !"klee_range", metadata !"klee_range", metadata !"klee_range", metadata !22, i32 13, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range} ; [ D
!22 = metadata !{i32 589865, metadata !"klee_range.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !23} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 589841, i32 0, i32 1, metadata !"klee_range.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!24 = metadata !{i32 589845, metadata !22, metadata !"", metadata !22, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !26, metadata !26, metadata !27}
!26 = metadata !{i32 589860, metadata !22, metadata !"int", metadata !22, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 589839, metadata !22, metadata !"", metadata !22, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 589862, metadata !22, metadata !"", metadata !22, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!29 = metadata !{i32 589860, metadata !22, metadata !"char", metadata !22, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 589870, i32 0, metadata !31, metadata !"memcpy", metadata !"memcpy", metadata !"memcpy", metadata !31, i32 12, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 589865, metadata !"memcpy.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !32} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 589841, i32 0, i32 1, metadata !"memcpy.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!33 = metadata !{i32 589845, metadata !31, metadata !"", metadata !31, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !35, metadata !35, metadata !35, metadata !36}
!35 = metadata !{i32 589839, metadata !31, metadata !"", metadata !31, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 589846, metadata !37, metadata !"size_t", metadata !37, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ldc/etri/llvm-gcc/bin/../lib/gcc/i686-pc-linux-gnu/4.2.1/include", metadata !32} ; [ DW_TAG_file_type ]
!38 = metadata !{i32 589860, metadata !31, metadata !"unsigned int", metadata !31, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 589870, i32 0, metadata !40, metadata !"memmove", metadata !"memmove", metadata !"memmove", metadata !40, i32 12, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 589865, metadata !"memmove.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !41} ; [ DW_TAG_file_type ]
!41 = metadata !{i32 589841, i32 0, i32 1, metadata !"memmove.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!42 = metadata !{i32 589845, metadata !40, metadata !"", metadata !40, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, null} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{metadata !44, metadata !44, metadata !44, metadata !45}
!44 = metadata !{i32 589839, metadata !40, metadata !"", metadata !40, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 589846, metadata !46, metadata !"size_t", metadata !46, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ]
!46 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ldc/etri/llvm-gcc/bin/../lib/gcc/i686-pc-linux-gnu/4.2.1/include", metadata !41} ; [ DW_TAG_file_type ]
!47 = metadata !{i32 589860, metadata !40, metadata !"unsigned int", metadata !40, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 589870, i32 0, metadata !49, metadata !"mempcpy", metadata !"mempcpy", metadata !"mempcpy", metadata !49, i32 11, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i32)* @mempcpy} ; [ DW_TAG_subpro
!49 = metadata !{i32 589865, metadata !"mempcpy.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !50} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 589841, i32 0, i32 1, metadata !"mempcpy.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!51 = metadata !{i32 589845, metadata !49, metadata !"", metadata !49, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !53, metadata !53, metadata !53, metadata !54}
!53 = metadata !{i32 589839, metadata !49, metadata !"", metadata !49, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!54 = metadata !{i32 589846, metadata !55, metadata !"size_t", metadata !55, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ldc/etri/llvm-gcc/bin/../lib/gcc/i686-pc-linux-gnu/4.2.1/include", metadata !50} ; [ DW_TAG_file_type ]
!56 = metadata !{i32 589860, metadata !49, metadata !"unsigned int", metadata !49, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!57 = metadata !{i32 589870, i32 0, metadata !58, metadata !"memset", metadata !"memset", metadata !"memset", metadata !58, i32 11, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 589865, metadata !"memset.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !59} ; [ DW_TAG_file_type ]
!59 = metadata !{i32 589841, i32 0, i32 1, metadata !"memset.c", metadata !"/home/ldc/etri/klee/runtime/Intrinsic/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!60 = metadata !{i32 589845, metadata !58, metadata !"", metadata !58, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !62, metadata !63, metadata !64}
!62 = metadata !{i32 589839, metadata !58, metadata !"", metadata !58, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 589860, metadata !58, metadata !"int", metadata !58, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 589846, metadata !65, metadata !"size_t", metadata !65, i32 326, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/ldc/etri/llvm-gcc/bin/../lib/gcc/i686-pc-linux-gnu/4.2.1/include", metadata !59} ; [ DW_TAG_file_type ]
!66 = metadata !{i32 589860, metadata !58, metadata !"unsigned int", metadata !58, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 590081, metadata !0, metadata !"z", metadata !1, i32 12, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 590081, metadata !6, metadata !"name", metadata !7, i32 13, metadata !12, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 590080, metadata !70, metadata !"x", metadata !7, i32 14, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 589835, metadata !6, i32 13, i32 0, metadata !7, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 590081, metadata !15, metadata !"bitWidth", metadata !16, i32 20, metadata !20, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 590081, metadata !15, metadata !"shift", metadata !16, i32 20, metadata !20, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 590081, metadata !21, metadata !"start", metadata !22, i32 13, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 590081, metadata !21, metadata !"end", metadata !22, i32 13, metadata !26, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 590081, metadata !21, metadata !"name", metadata !22, i32 13, metadata !27, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 590080, metadata !77, metadata !"x", metadata !22, i32 14, metadata !26, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 589835, metadata !21, i32 13, i32 0, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 590081, metadata !30, metadata !"destaddr", metadata !31, i32 12, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 590081, metadata !30, metadata !"srcaddr", metadata !31, i32 12, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 590081, metadata !30, metadata !"len", metadata !31, i32 12, metadata !36, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 590080, metadata !82, metadata !"dest", metadata !31, i32 13, metadata !83, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 589835, metadata !30, i32 12, i32 0, metadata !31, i32 0} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 589839, metadata !31, metadata !"", metadata !31, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 589860, metadata !31, metadata !"char", metadata !31, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 590080, metadata !82, metadata !"src", metadata !31, i32 14, metadata !86, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 589839, metadata !31, metadata !"", metadata !31, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 589862, metadata !31, metadata !"", metadata !31, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !84} ; [ DW_TAG_const_type ]
!88 = metadata !{i32 590081, metadata !39, metadata !"dst", metadata !40, i32 12, metadata !44, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 590081, metadata !39, metadata !"src", metadata !40, i32 12, metadata !44, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 590081, metadata !39, metadata !"count", metadata !40, i32 12, metadata !45, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590080, metadata !92, metadata !"a", metadata !40, i32 13, metadata !93, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 589835, metadata !39, i32 12, i32 0, metadata !40, i32 0} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 589839, metadata !40, metadata !"", metadata !40, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!94 = metadata !{i32 589860, metadata !40, metadata !"char", metadata !40, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!95 = metadata !{i32 590080, metadata !92, metadata !"b", metadata !40, i32 14, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 589839, metadata !40, metadata !"", metadata !40, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ]
!97 = metadata !{i32 589862, metadata !40, metadata !"", metadata !40, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ]
!98 = metadata !{i32 590081, metadata !48, metadata !"destaddr", metadata !49, i32 11, metadata !53, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 590081, metadata !48, metadata !"srcaddr", metadata !49, i32 11, metadata !53, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 590081, metadata !48, metadata !"len", metadata !49, i32 11, metadata !54, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 590080, metadata !102, metadata !"dest", metadata !49, i32 12, metadata !103, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 589835, metadata !48, i32 11, i32 0, metadata !49, i32 0} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 589839, metadata !49, metadata !"", metadata !49, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 589860, metadata !49, metadata !"char", metadata !49, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 590080, metadata !102, metadata !"src", metadata !49, i32 13, metadata !106, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 589839, metadata !49, metadata !"", metadata !49, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ]
!107 = metadata !{i32 589862, metadata !49, metadata !"", metadata !49, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !104} ; [ DW_TAG_const_type ]
!108 = metadata !{i32 590081, metadata !57, metadata !"dst", metadata !58, i32 11, metadata !62, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 590081, metadata !57, metadata !"s", metadata !58, i32 11, metadata !63, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 590081, metadata !57, metadata !"count", metadata !58, i32 11, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 590080, metadata !112, metadata !"a", metadata !58, i32 12, metadata !113, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 589835, metadata !57, i32 11, i32 0, metadata !58, i32 0} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 589839, metadata !58, metadata !"", metadata !58, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ]
!114 = metadata !{i32 589877, metadata !58, metadata !"", metadata !58, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !115} ; [ DW_TAG_volatile_type ]
!115 = metadata !{i32 589860, metadata !58, metadata !"char", metadata !58, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 13, i32 0, metadata !117, null}
!117 = metadata !{i32 589835, metadata !0, i32 12, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 14, i32 0, metadata !117, null}
!119 = metadata !{i32 15, i32 0, metadata !117, null}
!120 = metadata !{i32 15, i32 0, metadata !70, null}
!121 = metadata !{i32 16, i32 0, metadata !70, null}
!122 = metadata !{i32 21, i32 0, metadata !123, null}
!123 = metadata !{i32 589835, metadata !15, i32 20, i32 0, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 27, i32 0, metadata !123, null}
!125 = metadata !{i32 29, i32 0, metadata !123, null}
!126 = metadata !{i32 16, i32 0, metadata !77, null}
!127 = metadata !{i32 17, i32 0, metadata !77, null}
!128 = metadata !{i32 19, i32 0, metadata !77, null}
!129 = metadata !{i32 22, i32 0, metadata !77, null}
!130 = metadata !{i32 25, i32 0, metadata !77, null}
!131 = metadata !{i32 26, i32 0, metadata !77, null}
!132 = metadata !{i32 28, i32 0, metadata !77, null}
!133 = metadata !{i32 29, i32 0, metadata !77, null}
!134 = metadata !{i32 32, i32 0, metadata !77, null}
!135 = metadata !{i32 20, i32 0, metadata !77, null}
!136 = metadata !{i32 15, i32 0, metadata !102, null}
!137 = metadata !{i32 16, i32 0, metadata !102, null}
!138 = metadata !{i32 17, i32 0, metadata !102, null}
