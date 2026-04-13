#only do this when there are two lanes
#join the files
#R1
for i in *L001_R1.gz; do cat $i ${i%L001_R1.gz}L002_R1.gz > ${i%L001_R1.gz}R1.fastq.gz; done
#R2
for i in *L001_R2.gz; do cat $i ${i%L001_R2.gz}L002_R2.gz > ${i%L001_R2.gz}R2.fastq.gz; done
