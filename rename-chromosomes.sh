#!/usr/bin/env bash
# Rename chromosomes to be consistent between reference and queries
# Inspiration: https://github.com/matthewwiese/apple-phg/blob/main/scripts/rename-chromosomes.sh

# ASM217483v2 (pearl millet reference v2)
#sed -i 's/>CM007982\.2.*/>Chr01/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna
#sed -i 's/>CM007983\.2.*/>Chr02/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna
#sed -i 's/>CM007984\.2.*/>Chr03/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna
#sed -i 's/>CM007985\.2.*/>Chr04/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna
#sed -i 's/>CM007986\.2.*/>Chr05/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna
#sed -i 's/>CM007987\.2.*/>Chr06/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna
#sed -i 's/>CM007988\.2.*/>Chr07/g' GCA_002174835/ncbi_dataset/data/GCA_002174835.2/GCA_002174835.2_ASM217483v2_genomic.fna

# ASM217483v1 (pearl millet reference v1)
#sed -i 's/>CM007982\.1.*/>Chr01/g' GCA_002174835.1_ASM217483v1_genomic.fna
#sed -i 's/>CM007983\.1.*/>Chr02/g' GCA_002174835.1_ASM217483v1_genomic.fna
#sed -i 's/>CM007984\.1.*/>Chr03/g' GCA_002174835.1_ASM217483v1_genomic.fna
#sed -i 's/>CM007985\.1.*/>Chr04/g' GCA_002174835.1_ASM217483v1_genomic.fna
#sed -i 's/>CM007986\.1.*/>Chr05/g' GCA_002174835.1_ASM217483v1_genomic.fna
#sed -i 's/>CM007987\.1.*/>Chr06/g' GCA_002174835.1_ASM217483v1_genomic.fna
#sed -i 's/>CM007988\.1.*/>Chr07/g' GCA_002174835.1_ASM217483v1_genomic.fna

# 100192 (alternative reference)
sed -i 's/>chr1.*/>Chr01/g' 100192/pearl_millet_aseembly.fa
sed -i 's/>chr2.*/>Chr02/g' 100192/pearl_millet_aseembly.fa
sed -i 's/>chr3.*/>Chr03/g' 100192/pearl_millet_aseembly.fa
sed -i 's/>chr4.*/>Chr04/g' 100192/pearl_millet_aseembly.fa
sed -i 's/>chr5.*/>Chr05/g' 100192/pearl_millet_aseembly.fa
sed -i 's/>chr6.*/>Chr06/g' 100192/pearl_millet_aseembly.fa
sed -i 's/>chr7.*/>Chr07/g' 100192/pearl_millet_aseembly.fa