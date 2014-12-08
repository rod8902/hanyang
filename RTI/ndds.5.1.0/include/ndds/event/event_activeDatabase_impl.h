/* (c) Copyright, Real-Time Innovations, Inc. 2003-2009. All rights reserved. */
/*
 * @(#)event_activeDatabase_impl.h    generated by: makeheader    Sat Nov 23 02:38:16 2013
 *
 *		built from:	activeDatabase_impl.ifc
 */

#ifndef event_activeDatabase_impl_h
#define event_activeDatabase_impl_h


#ifdef __cplusplus
    extern "C" {
#endif

struct RTIEventActiveDatabaseThread;

struct RTIEventActiveDatabase {
    /* unfortunate that we can't do true inheritance */
    struct REDADatabase *_parent;
    RTI_UINT32 _state;
    struct RTIOsapiThreadFactory *_threadFactory;
    /*i
     * If our client provided a thread factory, we don't own it and can't
     * free it. But as a convenience, we allow our client to provide a NULL
     * thread factory. In that case, we create our own, so we *do* have to
     * free it.
     */
    RTIBool _ownsThreadFactory;
    struct RTIEventActiveDatabaseThread *_thread;
    struct RTIEventTimer *_timer;
    struct REDAWorkerFactory *_workerFactory;
    struct REDAExclusiveArea *_adminEA;
    const struct RTIEventActiveDatabaseListener *_listener;
    
    /* Cached property fields.
     * Don't cache whole property: REDA Database already provides
     * its property.
     */
    struct RTIEventActiveObjectProperty _cachedActiveObjectProperty;
    struct RTINtpTime _cachedCleanupPeriod;
};


/* ----------------------------------------------------------------------- */
#define RTIEventActiveDatabase_wakeup(database) \
    (database)->_timer->wakeup((database)->_timer)

/* ----------------------------------------------------------------------- */
#define RTIEventActiveDatabase_getParent(database) (database)->_parent


#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* event_activeDatabase_impl_h */
