####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = C:/Users/salma/SimplicityStudio/SDKs/gecko_sdk_2
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.3.2

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(SDK_PATH)/platform/service/cli/inc \
 -I$(SDK_PATH)/platform/service/cli/src \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emlib/host/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(SDK_PATH)/. \
 -I$(SDK_PATH)/protocol/zigbee \
 -I$(SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(SDK_PATH)/protocol/zigbee/app/util/gateway \
 -I$(SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(SDK_PATH)/protocol/zigbee/stack \
 -I$(SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(SDK_PATH)/protocol/zigbee/stack/include \
 -I$(SDK_PATH)/platform/radio/mac \
 -I$(SDK_PATH)/platform/service/token_manager/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(SDK_PATH)/platform/service/legacy_host/inc \
 -I$(SDK_PATH)/protocol/zigbee/stack/config \
 -I$(SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(SDK_PATH)/protocol/zigbee/stack/core \
 -I$(SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(SDK_PATH)/protocol/zigbee/stack/security \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

CXX_FLAGS += \
 -std=c++11 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o: $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o: $(SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA