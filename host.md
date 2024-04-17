# uname
```
# uname -a
Linux hidon 5.15.0-1048-nvidia #48-Ubuntu SMP Thu Mar 21 18:19:02 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
```

# lsb_release
```
# lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.4 LTS
Release:        22.04
Codename:       jammy
```

# cmdline
```
$ sudo cat /proc/cmdline 
BOOT_IMAGE=/boot/vmlinuz-5.15.0-1048-nvidia root=UUID=ca648b88-b1f3-47fe-859f-f32e56b91a76 ro sysrq_always_enabled console=ttyS0,115200n8 iommu=pt init_on_alloc=0 intel_iommu=on
```

# Processor
```
# cat /proc/cpuinfo
processor       : 223
vendor_id       : GenuineIntel
cpu family      : 6
model           : 143
model name      : Intel(R) Xeon(R) Platinum 8480C
stepping        : 8
microcode       : 0x2b0004d0
cpu MHz         : 2000.000
cache size      : 107520 KB
physical id     : 1
siblings        : 112
core id         : 55
cpu cores       : 56
apicid          : 239
initial apicid  : 239
fpu             : yes
fpu_exception   : yes
cpuid level     : 32
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid dca sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb cat_l3 cat_l2 cdp_l3 invpcid_single intel_ppin cdp_l2 ssbd mba ibrs ibpb stibp ibrs_enhanced tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid cqm rdt_a avx512f avx512dq rdseed adx smap avx512ifma clflushopt clwb intel_pt avx512cd sha_ni avx512bw avx512vl xsaveopt xsavec xgetbv1 xsaves cqm_llc cqm_occup_llc cqm_mbm_total cqm_mbm_local split_lock_detect avx_vnni avx512_bf16 wbnoinvd dtherm ida arat pln pts hwp hwp_act_window hwp_epp hwp_pkg_req avx512vbmi umip pku ospke waitpkg avx512_vbmi2 gfni vaes vpclmulqdq avx512_vnni avx512_bitalg tme avx512_vpopcntdq la57 rdpid bus_lock_detect cldemote movdiri movdir64b enqcmd fsrm md_clear serialize tsxldtrk pconfig arch_lbr amx_bf16 avx512_fp16 amx_tile amx_int8 flush_l1d arch_capabilities
vmx flags       : vnmi preemption_timer posted_intr invvpid ept_x_only ept_ad ept_1gb flexpriority apicv tsc_offset vtpr mtf vapic ept vpid unrestricted_guest vapic_reg vid ple shadow_vmcs pml ept_mode_based_exec tsc_scaling usr_wait_pause
bugs            : spectre_v1 spectre_v2 spec_store_bypass swapgs eibrs_pbrsb
bogomips        : 3985.40
clflush size    : 64
cache_alignment : 64
address sizes   : 52 bits physical, 57 bits virtual
power management:


# dmidecode --type processor
# dmidecode 3.3
Getting SMBIOS data from sysfs.
SMBIOS 3.5.0 present.

Handle 0x0054, DMI type 4, 50 bytes
Processor Information
	Socket Designation: CPU0
	Type: Central Processor
	Family: Xeon
	Manufacturer: Intel(R) Corporation
	ID: F8 06 08 00 FF FB EB BF
	Signature: Type 0, Family 6, Model 143, Stepping 8
	Flags:
		FPU (Floating-point unit on-chip)
		VME (Virtual mode extension)
		DE (Debugging extension)
		PSE (Page size extension)
		TSC (Time stamp counter)
		MSR (Model specific registers)
		PAE (Physical address extension)
		MCE (Machine check exception)
		CX8 (CMPXCHG8 instruction supported)
		APIC (On-chip APIC hardware supported)
		SEP (Fast system call)
		MTRR (Memory type range registers)
		PGE (Page global enable)
		MCA (Machine check architecture)
		CMOV (Conditional move instruction supported)
		PAT (Page attribute table)
		PSE-36 (36-bit page size extension)
		CLFSH (CLFLUSH instruction supported)
		DS (Debug store)
		ACPI (ACPI supported)
		MMX (MMX technology supported)
		FXSR (FXSAVE and FXSTOR instructions supported)
		SSE (Streaming SIMD extensions)
		SSE2 (Streaming SIMD extensions 2)
		SS (Self-snoop)
		HTT (Multi-threading)
		TM (Thermal monitor supported)
		PBE (Pending break enabled)
	Version: Intel(R) Xeon(R) Platinum 8480C
	Voltage: 1.6 V
	External Clock: 100 MHz
	Max Speed: 4000 MHz
	Current Speed: 2000 MHz
	Status: Populated, Enabled
	Upgrade: Socket LGA4677
	L1 Cache Handle: 0x0051
	L2 Cache Handle: 0x0052
	L3 Cache Handle: 0x0053
	Serial Number: Not Specified
	Asset Tag: UNKNOWN
	Part Number: Not Specified
	Core Count: 56
	Core Enabled: 56
	Thread Count: 112
	Characteristics:
		64-bit capable
		Multi-Core
		Hardware Thread
		Execute Protection
		Enhanced Virtualization
		Power/Performance Control

Handle 0x0058, DMI type 4, 50 bytes
Processor Information
	Socket Designation: CPU1
	Type: Central Processor
	Family: Xeon
	Manufacturer: Intel(R) Corporation
	ID: F8 06 08 00 FF FB EB BF
	Signature: Type 0, Family 6, Model 143, Stepping 8
	Flags:
		FPU (Floating-point unit on-chip)
		VME (Virtual mode extension)
		DE (Debugging extension)
		PSE (Page size extension)
		TSC (Time stamp counter)
		MSR (Model specific registers)
		PAE (Physical address extension)
		MCE (Machine check exception)
		CX8 (CMPXCHG8 instruction supported)
		APIC (On-chip APIC hardware supported)
		SEP (Fast system call)
		MTRR (Memory type range registers)
		PGE (Page global enable)
		MCA (Machine check architecture)
		CMOV (Conditional move instruction supported)
		PAT (Page attribute table)
		PSE-36 (36-bit page size extension)
		CLFSH (CLFLUSH instruction supported)
		DS (Debug store)
		ACPI (ACPI supported)
		MMX (MMX technology supported)
		FXSR (FXSAVE and FXSTOR instructions supported)
		SSE (Streaming SIMD extensions)
		SSE2 (Streaming SIMD extensions 2)
		SS (Self-snoop)
		HTT (Multi-threading)
		TM (Thermal monitor supported)
		PBE (Pending break enabled)
	Version: Intel(R) Xeon(R) Platinum 8480C
	Voltage: 1.6 V
	External Clock: 100 MHz
	Max Speed: 4000 MHz
	Current Speed: 2000 MHz
	Status: Populated, Enabled
	Upgrade: Socket LGA4677
	L1 Cache Handle: 0x0055
	L2 Cache Handle: 0x0056
	L3 Cache Handle: 0x0057
	Serial Number: Not Specified
	Asset Tag: UNKNOWN
	Part Number: Not Specified
	Core Count: 56
	Core Enabled: 56
	Thread Count: 112
	Characteristics:
		64-bit capable
		Multi-Core
		Hardware Thread
		Execute Protection
		Enhanced Virtualization
		Power/Performance Control
```




# GPU

```
# nvidia-smi                                                                                                                                                                                    
Wed Apr 17 04:59:04 2024                                                                                                                                                                                    
+---------------------------------------------------------------------------------------+                                                                                                                   
| NVIDIA-SMI 535.161.08             Driver Version: 535.161.08   CUDA Version: 12.2     |                                                                                                                   
|-----------------------------------------+----------------------+----------------------+                                                                                                                   
| GPU  Name                 Persistence-M | Bus-Id        Disp.A | Volatile Uncorr. ECC |                                                                                                                   
| Fan  Temp   Perf          Pwr:Usage/Cap |         Memory-Usage | GPU-Util  Compute M. |                                                                                                                   
|                                         |                      |               MIG M. |                                                                                                                   
|=========================================+======================+======================|                                                                                                                   
|   0  NVIDIA H100 80GB HBM3          Off | 00000000:1B:00.0 Off |                    0 |                                                                                                                   
| N/A   27C    P0              68W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   1  NVIDIA H100 80GB HBM3          Off | 00000000:43:00.0 Off |                    0 |                                                                                                                   
| N/A   29C    P0              69W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   2  NVIDIA H100 80GB HBM3          Off | 00000000:52:00.0 Off |                    0 |                                                                                                                   
| N/A   33C    P0              69W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   3  NVIDIA H100 80GB HBM3          Off | 00000000:61:00.0 Off |                    0 |                                                                                                                   
| N/A   33C    P0              70W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   4  NVIDIA H100 80GB HBM3          Off | 00000000:9D:00.0 Off |                    0 |                                                                                                                   
| N/A   30C    P0             110W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   5  NVIDIA H100 80GB HBM3          Off | 00000000:C3:00.0 Off |                    0 |                                                                                                                   
| N/A   29C    P0             107W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   6  NVIDIA H100 80GB HBM3          Off | 00000000:D1:00.0 Off |                    0 |                                                                                                                   
| N/A   33C    P0             115W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
|   7  NVIDIA H100 80GB HBM3          Off | 00000000:DF:00.0 Off |                    0 |                                                                                                                   
| N/A   34C    P0             114W / 700W |      0MiB / 81559MiB |      0%      Default |                                                                                                                   
|                                         |                      |             Disabled |                                                                                                                   
+-----------------------------------------+----------------------+----------------------+                                                                                                                   
                                                                                                                                                                                                            
+---------------------------------------------------------------------------------------+
| Processes:                                                                            |
|  GPU   GI   CI        PID   Type   Process name                            GPU Memory |
|        ID   ID                                                             Usage      |
|=======================================================================================|
|  No running processes found                                                           |
+---------------------------------------------------------------------------------------+
```
