#!/bin/bash

VM=jasimioni

virsh destroy $VM
virsh undefine $VM --nvram
rm -f *.qcow2

cat > user-data <<EOF
#cloud-config
password: passw0rd
chpasswd: { expire: False }
hostname: ${VM}
package_update: true
ssh_import_id: [jasimioni,mitchellaugustin]
ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEL+gDYGgV3R2zt2CJSA7sCGX6WeyRmXDkV+F+si4/vQkNy2fWTzaFnKwOw4IpXhLlEiDwdTJcl5eeum1zN5ORcamBIW7KXk2bDvL/lKP+y09ERuVUIizdbe0LEWVzo8NlLq+8yhf/fwcniQHD7ysL2T9Az5UaJiaPWW4mBfKKxKbg5wJwePLaMHtqcNlwmHdtqkaFlsyw7sfwNK0QmllSwY0L2Ku/umGwCDKjBQi+a4QwcrzJDa2aovTBaewf0BIcNnYdhWWVotvDnvwyvixAWrpniZQT3gnStU9cegBo3dCQc+yYcRV6x1hNGVLnP68/c2QEHh2+64ZehXo9xT214zO6/2dS6DLH2IJa6kBZAeNtdPm1TgYcMZn1btk77ok+DZi0XV9kiKdgQeet42RcjO7+XB3K2wjRqZLDmxMZBGoiZx0yAaNLic5G4IOFXox5x3jFt3Cvf4WWlSdFDtUP3dH7B9mCGXYdcbk63oDhGs6mcv+soaoHx3Ax6MdFvf8= jasimioni@WSJAS01
version: 2
EOF

cloud-localds ${VM}-seed.qcow2 user-data -d qcow2
qemu-img create -b /vms/images/jammy-server-cloudimg-amd64.img -F qcow2 -f qcow2 ${VM}-vda.qcow2

GPU01=pci_0000_1b_00_0

virt-install --name ${VM} --memory $((128*1024*1024)) --graphics vnc,listen=0.0.0.0 --noautoconsole \
             --console pty,target_type=serial --vcpus 80,cpuset=0-39,56-95 \
             --machine q35 --osinfo name=ubuntujammy \
             --cpu host-passthrough,cache.mode=passthrough,cell0.memory=$((64*1024*1024)),cell0.cpus=0-39,cell1.memory=$((64*1024*1024)),cell1.cpus=40-79 \
             --boot loader=/usr/share/OVMF/OVMF_CODE_4M.fd,loader_ro=yes,loader_type=pflash \
             --disk ${VM}-vda.qcow2 --disk ${VM}-seed.qcow2 #\
	     #--host-device=$GPU01
