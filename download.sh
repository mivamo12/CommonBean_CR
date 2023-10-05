#!/usr/bin/env bash

#*************NCBI*************************

# Reference (PhaVulg1_0)
wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/499/845/GCA_000499845.1_PhaVulg1_0/GCA_000499845.1_PhaVulg1_0_genomic.fna.gz'
gzip -d GCA_000499845.1_PhaVulg1_0_genomic.fna.gz

# Reference (ASM2944876v1)
wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/029/448/765/GCA_029448765.1_ASM2944876v1/GCA_029448765.1_ASM2944876v1_genomic.fna.gz'
gzip -d GCA_029448765.1_ASM2944876v1_genomic.fna.gz

# Reference (Rex_P_vulgaris_genomic)
wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/015/708/805/GCA_015708805.1_OAC-Rex_P_vulgaris/GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna.gz'
gzip -d GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna.gz

# Reference (1_phasIbeam10.0_genomic)
wget --content-disposition ' https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/001/517/995/GCA_001517995.1_phasIbeam10.0/GCA_001517995.1_phasIbeam10.0_genomic.fna.gz'
gzip -d GCA_001517995.1_phasIbeam10.0_genomic.fna.gz

#*************CIMMYT*************************

# Reference (KATB1)
wget --content-disposition 'https://data.cimmyt.org/file.xhtml?persistentId=hdl:11529/10548870/10&version=1.2'
gzip -d KATB1.CELL01.hifi.fasta.gz

# Reference (NABE12C)
wget --content-disposition 'https://data.cimmyt.org/file.xhtml?persistentId=hdl:11529/10548870/12&version=1.2'
gzip -d NABE12C.CELL01.hifi.fasta.gz 


#*************JGI*************************


# Reference (Phaseolus vulgaris v1.0)
curl --cookie jgi_session=/api/sessions/53ff8b965112b9521cdc1c4c67d77fd4 --output download.20231005.102441.zip -d "{\"ids\":{\"Phytozome-218\":[\"52b9c87f166e730e43a34fe6\"]}}" -H "Content-Type: application/json" https://files.jgi.doe.gov/filedownload/
#wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/499/845/GCA_000499845.1_PhaVulg1_0/GCA_000499845.1_PhaVulg1_0_genomic.fna.gz'
#gzip -d GCA_000499845.1_PhaVulg1_0_genomic.fna.gz

# Reference (Phaseolus vulgaris v2.1)
curl --cookie jgi_session=/api/sessions/53ff8b965112b9521cdc1c4c67d77fd4 --output download.20231005.101741.zip -d "{\"ids\":{\"Phytozome-442\":[\"57fecb657ded5e3135bc3584\"]}}" -H "Content-Type: application/json" https://files.jgi.doe.gov/filedownload/
#wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/029/448/765/GCA_029448765.1_ASM2944876v1/GCA_029448765.1_ASM2944876v1_genomic.fna.gz'
#gzip -d GCA_029448765.1_ASM2944876v1_genomic.fna.gz

# Reference (Phaseolus vulgaris Labor Ovalle v1.1)
curl --cookie jgi_session=/api/sessions/53ff8b965112b9521cdc1c4c67d77fd4 --output download.20231005.102245.zip -d "{\"ids\":{\"Phytozome-670\":[\"605b8463a272c2ee75ae19c7\"]}}" -H "Content-Type: application/json" https://files.jgi.doe.gov/filedownload/
#wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/015/708/805/GCA_015708805.1_OAC-Rex_P_vulgaris/GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna.gz'
#gzip -d GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna.gz

# Reference (Phaseolus vulgaris 5-593 v1.1)
curl --cookie jgi_session=/api/sessions/53ff8b965112b9521cdc1c4c67d77fd4 --output download.20231005.102529.zip -d "{\"ids\":{\"Phytozome-696\":[\"6178957c9c1bd5d80c81a69a\"]}}" -H "Content-Type: application/json" https://files.jgi.doe.gov/filedownload/
#wget --content-disposition ' https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/001/517/995/GCA_001517995.1_phasIbeam10.0/GCA_001517995.1_phasIbeam10.0_genomic.fna.gz'
#gzip -d GCA_001517995.1_phasIbeam10.0_genomic.fna.gz

# Reference (Phaseolus vulgaris UI111 v1.1)
curl --cookie jgi_session=/api/sessions/53ff8b965112b9521cdc1c4c67d77fd4 --output download.20231005.102610.zip -d "{\"ids\":{\"Phytozome-534\":[\"5d94dc9ec0d65a87debccfc6\"]}}" -H "Content-Type: application/json" https://files.jgi.doe.gov/filedownload/
#wget --content-disposition 'https://data.cimmyt.org/file.xhtml?persistentId=hdl:11529/10548870/10&version=1.2'
#gzip -d KATB1.CELL01.hifi.fasta.gz

# Reference (Phaseolus vulgaris JGI v0.91)
curl --cookie jgi_session=/api/sessions/53ff8b965112b9521cdc1c4c67d77fd4 --output download.20231005.122742.zip -d "{\"ids\":{\"Phytozome-186\":[\"53ed3cd70d878557fd3b632a\"]}}" -H "Content-Type: application/json" https://files.jgi.doe.gov/filedownload/
#wget --content-disposition 'https://data.cimmyt.org/file.xhtml?persistentId=hdl:11529/10548870/12&version=1.2'
#gzip -d NABE12C.CELL01.hifi.fasta.gz 


#**************other commands references examples *************************
# Inspiration: https://github.com/matthewwiese/apple-phg/blob/main/scripts/download-data.sh

# Reference FASTA (v2)
#datasets download genome accession GCA_002174835.2 --include genome --filename GCA_002174835.2.zip
#unzip -d GCA_002174835 GCA_002174835.2.zip

# Reference FASTA (v1)
#wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/174/835/GCA_002174835.1_ASM217483v1/GCA_002174835.1_ASM217483v1_genomic.fna.gz'
#gzip -d GCA_002174835.1_ASM217483v1_genomic.fna.gz

# Reference GFF (v1)
#wget --content-disposition 'https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/174/835/GCA_002174835.1_ASM217483v1/GCA_002174835.1_ASM217483v1_genomic.gff.gz'
#gzip -d GCA_002174835.1_ASM217483v1_genomic.gff.gz

# Reference (100192)
#wget --content-disposition 'https://ftp.cngb.org/pub/gigadb/pub/10.5524/100001_101000/100192/pearl_millet_aseembly.fa.gz'
#gzip -d pearl_millet_aseembly.fa.gz
#wget --content-disposition 'https://ftp.cngb.org/pub/gigadb/pub/10.5524/100001_101000/100192/pearl_millet_gff.gz'
#gzip -d pearl_millet_gff.gz
#mkdir -p 100192
#mv pearl_millet_aseembly.fa 100192
#mv pearl_millet_gff 100192

# Query
#wget --content-disposition 'https://figshare.com/ndownloader/files/37686399'
#unzip ICRM06777.zip
#cd ICRM06777
#gzip -d PearlMillet.ICMR06777.CHROMOSOMES.fasta.gz