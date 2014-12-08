######################################################################
# Makefile to build libsimplefileadapter.so
######################################################################

ARCH = i86Linux2.6gcc4.1.1

c_cc = gcc
c_ld = gcc

ifeq ($(DEBUG),1)
c_cc_flags = -m32 -g
else
c_cc_flags = -m32
endif

c_ld_flags = -m32 -static-libgcc
syslibs = -ldl -lnsl -lm -lpthread

DEFINES_ARCH_SPECIFIC = -DRTI_UNIX -DRTI_LINUX
DEFINES = $(DEFINES_ARCH_SPECIFIC)

INCLUDES = -I. -I$(NDDSHOME)/include -I$(NDDSHOME)/include/ndds -I$(ROUTINGSERVICEHOME)/include

LIBS = -L$(NDDSHOME)/lib/$(ARCH) -L$(ROUTINGSERVICEHOME)/bin/$(ARCH) \
       -lnddsc -lnddscore -lrtirsinfrastructure $(syslibs) $(extralibs)

COMMONSOURCES = SimpleFileAdapter.c
SHAREDLIB     = lib/$(ARCH)/libsimplefileadapter.so
DIRECTORIES   = lib.dir lib/$(ARCH).dir objs.dir objs/$(ARCH).dir
COMMONOBJS    = $(COMMONSOURCES:%.c=objs/$(ARCH)/%.o)

# We actually stick the objects in a sub directory to keep your directory clean.
$(ARCH) : $(DIRECTORIES) $(COMMONOBJS) $(SHAREDLIB)

$(SHAREDLIB) : $(COMMONOBJS)
	$(c_cc) $(c_ld_flags) -shared -o $@ $^ $(LIBS) 

objs/$(ARCH)/%.o : %.c 
	$(c_cc) $(c_cc_flags)  -o $@ $(DEFINES) $(INCLUDES) -c $<

# Here is how we create those subdirectories automatically.
%.dir : 
	@echo "Checking directory $*"
	@if [ ! -d $* ]; then \
		echo "Making directory $*"; \
		mkdir -p $* ; \
	fi;

clean:
	@rm -rf ./objs
	@rm -rf ./lib	
