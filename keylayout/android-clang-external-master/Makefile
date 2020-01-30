CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)gcc

# Be silent per default, but 'make V=1' will show all compiler calls
ifneq ($(V),1)
Q := @
endif

CFLAGS += -Wall -O2 -g
CFLAGS += \
	-I$(ANDROID_BUILD_TOP)/bionic/libc/include \
	-isystem $(ANDROID_BUILD_TOP)/bionic/libc/include \
	-isystem $(ANDROID_BUILD_TOP)/bionic/libc/kernel/uapi \
	-isystem $(ANDROID_BUILD_TOP)/bionic/libc/kernel/uapi/asm-arm \
	-isystem $(ANDROID_BUILD_TOP)/bionic/libc/kernel/android/uapi \
	-target armv7a-linux-androideabi


OBJS = main.o
OUT = main

all: $(OUT)

$(OUT): $(OBJS)
	@printf "  LD      $@\n"
	$(Q)$(LD) $(LDFLAGS) $(OBJS) -o $@

%.o: %.c
	@printf "  CC      $(*).c\n"
	$(Q)$(CC) $(CFLAGS) -o $(*).o -c $(*).c

clean:
	@printf "  CLEAN\n"
	$(Q)-rm -f $(OBJS) $(OUT)

.PHONY: all clean
