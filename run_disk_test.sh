#!/bin/bash

types="randwrite write randread read"


mkdir -p ./result

for type in ${types}
do
     echo "fio --section=${type} --output=result/$type.result disk.fio"
     fio --section=$type --output=result/$type.result disk.fio
done
