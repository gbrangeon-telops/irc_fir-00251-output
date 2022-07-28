#!/usr/local/bin/perl

sub read_file {
   my($filename) = @_;
   
   local $/ = undef;
   open(my $fh, "<", $filename)
      or die ("Can't open $filename\n");
   my $fileStr = <$fh>;
   close ($fh);

   return $fileStr;
}

use Getopt::Long;
my $outputBuildInfoFile;
my $outputReleaseInfoFile;
my $outputFpgaSize;

GetOptions("obf=s" => \$outputBuildInfoFile,
      "of=s" => \$outputReleaseInfoFile,
      "osize=s" => \$outputFpgaSize)
   or die("Error in command line arguments\n");

my $error = 0;

# Parse output build info file
my $outputBuildInfoFileStr = read_file($outputBuildInfoFile);
my $outputBuildInfoFileSubstr = substr($outputBuildInfoFileStr, index($outputBuildInfoFileStr, "ARCH_FPGA_${outputFpgaSize}"));
my $outputBuildInfoHardware;
my $outputBuildInfoSoftware;
my $outputBuildInfoBootLoader;
my $outputBuildInfoCommon;

if ($outputBuildInfoFileSubstr =~ /SVN_HARDWARE_REV[^\n\r0-9]+(\d+)/) { $outputBuildInfoHardware = $1; } else { $error = 1; }
if ($outputBuildInfoFileSubstr =~ /SVN_SOFTWARE_REV[^\n\r0-9]+(\d+)/) { $outputBuildInfoSoftware = $1; } else { $error = 1; }
if ($outputBuildInfoFileSubstr =~ /SVN_BOOTLOADER_REV[^\n\r0-9]+(\d+)/) { $outputBuildInfoBootLoader = $1; } else { $error = 1; }
if ($outputBuildInfoFileSubstr =~ /SVN_COMMON_REV[^\n\r0-9]+(\d+)/) { $outputBuildInfoCommon = $1; } else { $error = 1; }

if ($error == 1)
{
   die("Cannot parse output build info file\n");
}

# Parse output release info file
my $outputReleaseInfoFileStr = read_file($outputReleaseInfoFile);
my $outputReleaseInfoHardware;
my $outputReleaseInfoSoftware;
my $outputReleaseInfoBootLoader;
my $outputReleaseInfoCommon;

if ($outputReleaseInfoFileStr =~ /rel_out_hw_rev[^\n\r0-9]+(\d+)/) { $outputReleaseInfoHardware = $1; } else { $error = 1; }
if ($outputReleaseInfoFileStr =~ /rel_out_sw_rev[^\n\r0-9]+(\d+)/) { $outputReleaseInfoSoftware = $1; } else { $error = 1; }
if ($outputReleaseInfoFileStr =~ /rel_out_boot_rev[^\n\r0-9]+(\d+)/) { $outputReleaseInfoBootLoader = $1; } else { $error = 1; }
if ($outputReleaseInfoFileStr =~ /rel_out_common_rev[^\n\r0-9]+(\d+)/) { $outputReleaseInfoCommon = $1; } else { $error = 1; }

if ($error == 1)
{
   die("Cannot parse output release info file\n");
}

# Verify output build info file
if (($outputReleaseInfoHardware ne $outputBuildInfoHardware) ||
   ($outputReleaseInfoSoftware ne $outputBuildInfoSoftware) || 
   ($outputReleaseInfoBootLoader ne $outputBuildInfoBootLoader) || 
   ($outputReleaseInfoCommon ne $outputBuildInfoCommon))
{
   die("Output FPGA release info does not match build info\n");
}

print("Output FPGA release passed\n");
