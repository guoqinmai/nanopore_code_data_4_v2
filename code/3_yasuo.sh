#!/bin/sh
for i in `cat nonore.list.txt`; do samtools fastq -f 4 /ifs1/User/mgq_st/test2_hebing/2_qusuzhu/$i.sam | gzip >/ifs1/User/mgq_st/test2_hebing/3_yasuo/$i;done