#ifndef BUILDINFO_H
#define BUILDINFO_H

#define SVN_HARDWARE_REV   20797
#define SVN_SOFTWARE_REV   21351
#define SVN_COMMON_REV     21389

#define SVN_UNCOMMITTED_CHANGES  ((SVN_HARDWARE_REV < 0) || (SVN_SOFTWARE_REV < 0) || (SVN_COMMON_REV < 0))

#if SVN_UNCOMMITTED_CHANGES
#warning Uncommitted changes detected.
#endif

#define HARDWARE_MISMATCH (0)

#if HARDWARE_MISMATCH
#error D:\Telops\FIR-00251-Output\sdk\hw_platform_0\fir_251_output_top.bit does not match D:\Telops\FIR-00251-Output\sdk\hw\fir_251_output_top.bit.
#endif

#endif // BUILDINFO_H
