#!/bin/sh
for i in `cat nonore.list.txt`; do /ifs1/User/mgq_st/software/minimap2/minimap2 -ax map-ont /ifs1/User/mgq_st/test2_hebing/code/GCF_000001405.39_GRCh38.p13_genomic.fna /ifs1/User/mgq_st/test2_hebing/1_zhikong/$i -Y -N 20 -t 12 >/ifs1/User/mgq_st/test2_hebing/2_qusuzhu/$i.sam;done
