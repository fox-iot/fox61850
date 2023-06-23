LIBIEC_HOME=../

PROJECT_BINARY_NAME = smart_substation
PROJECT_SOURCES += smart_substation.c

INCLUDES += -I.
CFLAGS += -I/root/fox61850/src/iec61850/inc/

include $(LIBIEC_HOME)/make/target_system.mk
include $(LIBIEC_HOME)/make/stack_includes.mk

all:	$(PROJECT_BINARY_NAME)

include $(LIBIEC_HOME)/make/common_targets.mk

$(PROJECT_BINARY_NAME):	$(PROJECT_SOURCES) $(LIB_NAME)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROJECT_BINARY_NAME) $(PROJECT_SOURCES) $(INCLUDES) $(LIB_NAME) $(LDLIBS) -lm

clean:
	rm -f $(PROJECT_BINARY_NAME)


