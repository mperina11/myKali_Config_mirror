## Hashcat for my Ryzen 5 CPU
Error is:
```
clBuildProgram(): CL_BUILD_PROGRAM_FAILURE

error: unknown target CPU 'generic'
```

Same as this dude: https://hashcat.net/forum/thread-9810.html
					    https://github.com/hashcat/hashcat/issues/2689

#### My steps
```
sudo apt remove pocl-opencl-icd 
#
ls -l /etc/OpenCL/vendors/     
>> -rw-r--r-- 1 root root 16 Oct 15 09:22 pocl.icd
#
http://registrationcenter-download.intel.com/akdlm/irc_nas/12556/opencl_runtime_16.1.2_x64_rh_6.4.0.37.tgz
#
sudo bash install.sh
#
<just accept each step>
#
 -l /etc/OpenCL/vendors/     
>> total 4
>> lrwxrwxrwx 1 root root 42 Feb 16 16:38 intel64.icd -> /etc/alternatives/opencl-intel-runtime-icd
>> -rw-r--r-- 1 root root 16 Oct 15 09:22 pocl.icd
```
