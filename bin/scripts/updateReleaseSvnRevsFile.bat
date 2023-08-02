rem Clean up
del %revFile%

echo set rel_out_hw_rev $WCREV$> %revFile%
%svn_subwcrev% %hwFile% %revFile% %revFile%

echo set rel_out_sw_rev $WCREV$>> %revFile%
%svn_subwcrev% %elfFile% %revFile% %revFile%

echo set rel_out_boot_rev 0 >> %revFile%

echo set rel_out_common_rev $WCREV$>> %revFile%
%svn_subwcrev% %commonDir% %revFile% %revFile%