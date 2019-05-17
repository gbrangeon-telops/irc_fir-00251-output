#ifndef BUILDINFO_H
#define BUILDINFO_H

#ifdef ARCH_FPGA_70

#define SVN_HARDWARE_REV   23514
#define SVN_SOFTWARE_REV   23563
#define SVN_COMMON_REV     23551

#define SVN_UNCOMMITTED_CHANGES  ((SVN_HARDWARE_REV < 0) || (SVN_SOFTWARE_REV < 0) || (SVN_COMMON_REV < 0))

#if SVN_UNCOMMITTED_CHANGES
#warning Uncommitted changes detected.
#endif

#define HARDWARE_MISMATCH (0)

#if HARDWARE_MISMATCH
#error D:\Telops\FIR-00251-Output\sdk\hw_platform_70\fir_251_output_top_70.bit does not match D:\Telops\FIR-00251-Output\sdk\hw_70\fir_251_output_top_70.bit.
#endif

#elif defined(ARCH_FPGA_160)

#define SVN_HARDWARE_REV   23514
#define SVN_SOFTWARE_REV   23563
#define SVN_COMMON_REV     23551

#define SVN_UNCOMMITTED_CHANGES  ((SVN_HARDWARE_REV < 0) || (SVN_SOFTWARE_REV < 0) || (SVN_COMMON_REV < 0))

#if SVN_UNCOMMITTED_CHANGES
#warning Uncommitted changes detected.
#endif

#define HARDWARE_MISMATCH (0)

#if HARDWARE_MISMATCH
#error D:\Telops\FIR-00251-Output\sdk\hw_platform_160\fir_251_output_top_160.bit does not match D:\Telops\FIR-00251-Output\sdk\hw_160\fir_251_output_top_160.bit.
#endif

#endif  // FPGA_ARCH Check

#endif // BUILDINFO_H
