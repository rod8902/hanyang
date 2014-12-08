/* (c) Copyright, Real-Time Innovations, Inc. 2003-2009. All rights reserved. */
/*
 * @(#)reda_skiplist_impl.h    generated by: makeheader    Sat Nov 23 02:38:00 2013
 *
 *		built from:	skiplist_impl.ifc
 */

#ifndef reda_skiplist_impl_h
#define reda_skiplist_impl_h


#ifdef __cplusplus
    extern "C" {
#endif


#define REDA_SKIPLIST_MAGIC_NUMBER 0x7344L

struct REDASkiplistNode {
    /*i userData (key and data); note that the compare function
      is invoked on this userData. 
    */
    void *userData;
    /*i level is in [0, list->_desc->maximumLevel]. */
    char level;
    /*i userChar */
    char userChar;
    /*i userInt */
    int userInt;
    /*i the only backward pointer; enables reverse iteration */
    struct REDASkiplistNode *backward;
    /*i the first forward pointer; this is always present, and should NOT be
      moved around because of the reason given shortly. */
    struct REDASkiplistNode *forward;
    /* more forward pointers are stored here so that they can
       be accessed as (&forward)[level]. */
};

struct REDASkiplistDescription {
    /*e Node creation function */
    REDASkiplistNodeCreateFunction nodeCreateFnc;
    /*e Parameter to REDASkiplistNodeCreateFunction */
    void *nodeCreateParam;
    /*e Node destruction function */
    REDASkiplistNodeDestroyFunction nodeDestroyFnc;
    /*e Parameter to REDASkiplistNodeDestroyFunction */
    void *nodeDestroyParam;
    /*e Function to create array of forward pointers for a node */
    REDASkiplistNodeLevelGenerateFunction nodeLevelGenerateFnc;
    /*e Parameter to REDASkiplistNodeLevelGenerateFunction */
    void *nodeLevelGenerateParam;
    /*e Maximum level for any nodes in the skiplist */
    char maximumLevel;
};


  #define REDASkiplistNode_getForwardPointer(node, level) \
    ( (&((node)->forward))[(level)] )

struct REDASkiplist {
    /* A magic number that serves as a hint as to whether this
       skiplist has been initialized yet*/     
    int _skiplist_init;
    /*i number of nodes in the list.  */
    int _nodeCount;
    /*i head can skip forward at any valid level. */
    struct REDASkiplistNode *_head;
    /*i the last node in the list */
    struct REDASkiplistNode *_last;
    /*i Description of the skiplist */
    const struct REDASkiplistDescription *_desc;
    /*e Function to compare two userDatas */
    REDAOrderedDataTypeCompareFunction nodeKeyCompareFnc;
    /*i _currentMaxLevel is in [0, _desc->maximumLevel] */
    char _currentMaxLevel;
    /*i _Function to compare two node keys and also to pass addition userdata */
    REDAOrderedDataTypeCompareWithUserDataFunction nodeKeyCompareWithUserDataFnc;
    /*i _Any additional user data to  passed to the copare function*/
    void * userData;

    unsigned int _cumulativeNodeCount;
    RTIBool _isBuiltinCompareFcn;
};


  #define REDASkiplist_forwPtrCount(level) (level+1)


  #define REDA_SKIPLIST_FORW_PTR_MAX  \
      REDASkiplist_forwPtrCount(REDA_SKIPLIST_LEVEL_MAX_UPPER_LIMIT)


  #define REDASkiplist_sizeOfSkiplistNode(level) \
    (sizeof(struct REDASkiplistNode) + \
     (level)*sizeof(struct REDASkiplistNode *))


  #ifndef RTI_PRECONDITION_TEST
    #define REDASkiplist_gotoTopNode    REDASkiplist_gotoTopNodeMacro
    #define REDASkiplist_gotoLastNode    REDASkiplist_gotoLastNodeMacro
    #define REDASkiplist_gotoNextNode   REDASkiplist_gotoNextNodeMacro
    #define REDASkiplist_gotoPreviousNode   REDASkiplist_gotoPreviousNodeMacro
    #define REDASkiplist_getNodeCount   REDASkiplist_getNodeCountMacro
    #define REDASkiplist_getLevel       REDASkiplist_getLevelMacro
    #define REDASkiplist_isInitialized  REDASkiplist_isInitializedMacro
    #define REDASkiplist_findNode(self, answer, preciseMatch, key) \
        REDASkiplist_findNodeFastMacro(self, answer, preciseMatch, key)
  #endif /* !RTI_PRECONDITION_TEST */
/* ---------------------------------------------------------------------- */
/*i @note NEVER precondition tested! */
  #define REDASkiplistNode_getUserData(node) ((node)->userData)
/* ---------------------------------------------------------------------- */
  #define REDASkiplistNode_getUserChar(node) ((node)->userChar)
/* ---------------------------------------------------------------------- */
  #define REDASkiplistNode_getUserInt(node) ((node)->userInt)
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_gotoTopNodeMacro(self, node) \
    *(node) = ((self)->_head)
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_gotoLastNodeMacro(self, node) \
    ((*(node) = ((self)->_last)) != NULL)
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_gotoNextNodeMacro(self, node) \
    ( (*(node) = ((*(node))->forward)) != NULL )
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_gotoPreviousNodeMacro(self, node) \
    ( (*(node) = ((*(node))->backward)) != (self)->_head && *(node) != NULL)
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_getNodeCountMacro(self) ((self)->_nodeCount)
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_getLevelMacro(self) ((self)->_currentMaxLevel)
/* ---------------------------------------------------------------------- */
  #define REDASkiplist_isInitializedMacro(self)  \
    (((self)->_skiplist_init == REDA_SKIPLIST_MAGIC_NUMBER)?RTI_TRUE:RTI_FALSE)


#define REDASkiplist_findNodeWithUpdateMacro(self, answer, preciseMatch, \
                                             searchKey, update)          \
{                                                                        \
    register int level = (int)((self)->_currentMaxLevel);                \
    register int compResult = -1;                                        \
    register struct REDASkiplistNode *nextNode = NULL;                   \
    register struct REDASkiplistNode *currNode;                          \
    register void *inKey = (searchKey);                                  \
    register void *userData = (self)->userData;                          \
    register struct REDASkiplistNode **updateArg = (update);             \
    register REDAOrderedDataTypeCompareFunction compareFnc =             \
        (self)->nodeKeyCompareFnc;                                       \
    register REDAOrderedDataTypeCompareWithUserDataFunction compareFncWithUserData =            \
        (self)->nodeKeyCompareWithUserDataFnc;                           \
                                                                         \
    for (currNode = (self)->_head; level >= 0; --level) {                \
	while (((nextNode =                                              \
                 REDASkiplistNode_getForwardPointer(currNode,            \
                                                    level)) != NULL) &&  \
	       ((compResult = ((self)->_isBuiltinCompareFcn) ?           \
                                REDAOrderedDataType_compareUsingFnc(compareFnc,         \
                                                                    nextNode->userData, \
                                                                    inKey):             \
                                (compareFncWithUserData ?                                       \
                                compareFncWithUserData(nextNode->userData,inKey,userData) :     \
                                compareFnc(nextNode->userData,inKey))) < 0) ) {                 \
	    currNode = nextNode;                                         \
        }                                                                \
        updateArg[level] = currNode;                                     \
    }                                                                    \
    if (preciseMatch) {                                                  \
	*(preciseMatch) = (compResult == 0);                             \
    }                                                                    \
    *(answer) = nextNode;                                                \
}


#define REDASkiplist_findLastNodeWithUpdateMacro(self, answer, update)   \
{                                                                        \
    register int level = (int)((self)->_currentMaxLevel);                \
    register struct REDASkiplistNode *nextNode = NULL;                   \
    register struct REDASkiplistNode *currNode;                          \
    register struct REDASkiplistNode **updateArg = (update);             \
                                                                         \
    for (currNode = (self)->_head; level >= 0; --level) {                \
	while (((nextNode =                                              \
                 REDASkiplistNode_getForwardPointer(currNode,            \
                                                    level)) != NULL)) {  \
	    currNode = nextNode;                                         \
        }                                                                \
        updateArg[level] = currNode;                                     \
    }                                                                    \
    *(answer) = nextNode;                                                \
}


#define REDASkiplist_findNodeFastMacro(self, answer, preciseMatch, searchKey) \
{                                                                             \
    register int level;                                                       \
    register int compResult = -1;  /* must stay! */                           \
    register void *inKey = (searchKey);                                       \
    register void *userData = (self)->userData;                               \
    register REDAOrderedDataTypeCompareFunction compareFnc =                  \
        (self)->nodeKeyCompareFnc;                                            \
    register REDAOrderedDataTypeCompareWithUserDataFunction                   \
        compareWithUserDataFnc =  (self)->nodeKeyCompareWithUserDataFnc;      \
    register struct REDASkiplistNode *nextNode = NULL;                        \
    register struct REDASkiplistNode *currNode = (self)->_head;               \
                                                                              \
    for (level = (int)((self)->_currentMaxLevel); level>=0; --level) {        \
	while (((nextNode =                                                   \
                 REDASkiplistNode_getForwardPointer(currNode,                 \
                                                    level)) != NULL) &&       \
	       ((compResult =    compareWithUserDataFnc ?                      \
                 compareWithUserDataFnc(nextNode->userData,                   \
                                        inKey,userData) :                     \
                 REDAOrderedDataType_compareUsingFnc(compareFnc,              \
                                                     nextNode->userData,      \
                                                     inKey)) < 0)) {          \
	    currNode = nextNode;                                              \
        }                                                                     \
	/* invariant: compResult>=0 || nextNode == NULL */                    \
	if (compResult == 0) {                                                \
	    break;                                                            \
	}                                                                     \
    }                                                                         \
    if (preciseMatch) {                                                       \
	*(preciseMatch) = (compResult == 0);                                  \
    }                                                                         \
    *(answer) = nextNode;                                                     \
}


#ifdef __cplusplus
    }	/* extern "C" */
#endif

#endif /* reda_skiplist_impl_h */
