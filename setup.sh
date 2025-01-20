#!/bin/bash
ansible all -m user -a 'name=sandy password="$6$8GiPJBlbwo8cC1LC$4Pg4vfym5sRa6BT9p.FDGkPrKTyOLrmPFYMKe6zJWl4LItAgACAJJ9NOlhQQIRRk/u63l4v4SgMXCNIuDl.N11" state=present ' -u root -k
ansible all -m authorized_key -a "user=sandy key={{ lookup('file','/home/sandy/.ssh/id_rsa.pub') }} state=present" -u root -k
ansible all -m copy -a 'content="sandy ALL=(ALL) NOPASSWD: ALL\n" dest="/etc/sudoers.d/sandy"' -u root -k 
