#!/bin/sh
for i in `cat nonore.list.txt`; do perl -ne 'y/@/>/;print($_.<>)&&<>&&<>' /ifs1/User/mgq_st/test2_hebing/4_jieya/$i >/ifs1/User/mgq_st/test2_hebing/5_fasta/$i.fasta;done