rem Clean up
del %revFile%

echo our $rel_out_hw_rev = $WCREV$;> %revFile%
%svn_subwcrev% %hwFile% %revFile% %revFile%

echo our $rel_out_sw_rev = $WCREV$;>> %revFile%
%svn_subwcrev% %elfFile% %revFile% %revFile%

echo our $rel_out_boot_rev = 0;>> %revFile%

echo our $rel_out_common_rev = $WCREV$;>> %revFile%
%svn_subwcrev% %commonDir% %revFile% %revFile%

echo 1;>> %revFile%