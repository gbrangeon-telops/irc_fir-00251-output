################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/usart/subdir.mk
-include src/startup/subdir.mk
-include src/SDI/vscaler_driver/subdir.mk
-include src/SDI/tpg_driver/subdir.mk
-include src/SDI/colormap/subdir.mk
-include src/SDI/subdir.mk
-include src/Pleora/subdir.mk
-include src/FrameBuffer/subdir.mk
-include src/Common/subdir.mk
-include src/Clink/subdir.mk
-include src/AGC/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
fir_00251_output_160.elf.size \

ELFCHECK += \
fir_00251_output_160.elf.elfcheck \


# All Target
all: pre-build main-build

# Main-build Target
main-build: fir_00251_output_160.elf secondary-outputs

# Tool invocations
fir_00251_output_160.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../standalone_bsp_160/MCU_microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mcpu=v9.2 -mno-xl-soft-mul -mhard-float -Wl,--no-relax -Wl,--gc-sections -o "fir_00251_output_160.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

fir_00251_output_160.elf.size: fir_00251_output_160.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size fir_00251_output_160.elf  |tee "fir_00251_output_160.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

fir_00251_output_160.elf.elfcheck: fir_00251_output_160.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck fir_00251_output_160.elf -hw ../../hw_platform_160/system.xml -pe MCU_microblaze_0  |tee "fir_00251_output_160.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) fir_00251_output_160.elf
	-@echo ' '

pre-build:
	-@echo 'Generate build info file'
	-D:\Telops\FIR-00251-Output\bin\scripts\generateBuildInfoFile.bat
	-@echo ' '

post-build:
	-@echo 'Generate Elf sections'
	-mb-objdump -x D:/Telops/FIR-00251-Output/sdk/fir_00251_output_160/Release/fir_00251_output_160.elf > D:/Telops/FIR-00251-Output/sdk/fir_00251_output_160/Release/fir_00251_output_160.elf.sections
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build post-build

-include ../makefile.targets
