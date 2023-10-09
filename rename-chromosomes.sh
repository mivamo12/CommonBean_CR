#!/usr/bin/env bash
# Rename chromosomes to be consistent between reference and queries
# Inspiration: https://github.com/matthewwiese/apple-phg/blob/main/scripts/rename-chromosomes.sh

# GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002288.1 Phaseolus vulgaris cultivar G19833 chromosome 1, whole genome shotgun sequence.*/>Chr01/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002289.1 Phaseolus vulgaris cultivar G19833 chromosome 2, whole genome shotgun sequence.*/>Chr02/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002290.1 Phaseolus vulgaris cultivar G19833 chromosome 3, whole genome shotgun sequence.*/>Chr03/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002291.1 Phaseolus vulgaris cultivar G19833 chromosome 4, whole genome shotgun sequence.*/>Chr04/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002292.1 Phaseolus vulgaris cultivar G19833 chromosome 5, whole genome shotgun sequence.*/>Chr05/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002293.1 Phaseolus vulgaris cultivar G19833 chromosome 6, whole genome shotgun sequence.*/>Chr06/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002294.1 Phaseolus vulgaris cultivar G19833 chromosome 7, whole genome shotgun sequence.*/>Chr07/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002295.1 Phaseolus vulgaris cultivar G19833 chromosome 8, whole genome shotgun sequence.*/>Chr08/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002296.1 Phaseolus vulgaris cultivar G19833 chromosome 9, whole genome shotgun sequence.*/>Chr09/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002297.1 Phaseolus vulgaris cultivar G19833 chromosome 10, whole genome shotgun sequence.*/>Chr10/g' GCA_000499845.1_PhaVulg1_0_genomic.fna
#sed -i 's/>CM002298.1 Phaseolus vulgaris cultivar G19833 chromosome 11, whole genome shotgun sequence.*/>Chr11/g' GCA_000499845.1_PhaVulg1_0_genomic.fna

# GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027366.1 Phaseolus vulgaris cultivar OAC Rex chromosome 1, whole genome shotgun sequence.*/>Chr01/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027367.1 Phaseolus vulgaris cultivar OAC Rex chromosome 2, whole genome shotgun sequence.*/>Chr02/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027368.1 Phaseolus vulgaris cultivar OAC Rex chromosome 3, whole genome shotgun sequence.*/>Chr03/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027369.1 Phaseolus vulgaris cultivar OAC Rex chromosome 4, whole genome shotgun sequence.*/>Chr04/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027370.1 Phaseolus vulgaris cultivar OAC Rex chromosome 5, whole genome shotgun sequence.*/>Chr05/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027371.1 Phaseolus vulgaris cultivar OAC Rex chromosome 6, whole genome shotgun sequence.*/>Chr06/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027372.1 Phaseolus vulgaris cultivar OAC Rex chromosome 7, whole genome shotgun sequence.*/>Chr07/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027373.1 Phaseolus vulgaris cultivar OAC Rex chromosome 8, whole genome shotgun sequence.*/>Chr08/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027374.1 Phaseolus vulgaris cultivar OAC Rex chromosome 9, whole genome shotgun sequence.*/>Chr09/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027375.1 Phaseolus vulgaris cultivar OAC Rex chromosome 10, whole genome shotgun sequence.*/>Chr10/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna
#sed -i 's/>CM027376.1 Phaseolus vulgaris cultivar OAC Rex chromosome 11, whole genome shotgun sequence.*/>Chr11/g' GCA_015708805.1_OAC-Rex_P_vulgaris_genomic.fna


# GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055665.1 Phaseolus vulgaris cultivar Flavert chromosome 1, whole genome shotgun sequence.*/>Chr01/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055666.1 Phaseolus vulgaris cultivar Flavert chromosome 2, whole genome shotgun sequence.*/>Chr02/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055667.1 Phaseolus vulgaris cultivar Flavert chromosome 3, whole genome shotgun sequence.*/>Chr03/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055668.1 Phaseolus vulgaris cultivar Flavert chromosome 4, whole genome shotgun sequence.*/>Chr04/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055669.1 Phaseolus vulgaris cultivar Flavert chromosome 5, whole genome shotgun sequence.*/>Chr05/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055670.1 Phaseolus vulgaris cultivar Flavert chromosome 6, whole genome shotgun sequence.*/>Chr06/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055671.1 Phaseolus vulgaris cultivar Flavert chromosome 7, whole genome shotgun sequence.*/>Chr07/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055672.1 Phaseolus vulgaris cultivar Flavert chromosome 8, whole genome shotgun sequence.*/>Chr08/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055673.1 Phaseolus vulgaris cultivar Flavert chromosome 9, whole genome shotgun sequence.*/>Chr09/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055674.1 Phaseolus vulgaris cultivar Flavert chromosome 10, whole genome shotgun sequence.*/>Chr10/g' GCA_029448765.1_ASM2944876v1_genomic.fna
#sed -i 's/>CM055675.1 Phaseolus vulgaris cultivar Flavert chromosome 11, whole genome shotgun sequence.*/>Chr11/g' GCA_029448765.1_ASM2944876v1_genomic.fna

# Pvulgaris_218.fa
sed -i 's/>Chr01.*/>Chr01/g' Pvulgaris_218.fa
sed -i 's/>Chr02.*/>Chr02/g' Pvulgaris_218.fa
sed -i 's/>Chr03.*/>Chr03/g' Pvulgaris_218.fa
sed -i 's/>Chr04.*/>Chr04/g' Pvulgaris_218.fa
sed -i 's/>Chr05.*/>Chr05/g' Pvulgaris_218.fa
sed -i 's/>Chr06.*/>Chr06/g' Pvulgaris_218.fa
sed -i 's/>Chr07.*/>Chr07/g' Pvulgaris_218.fa
sed -i 's/>Chr08.*/>Chr08/g' Pvulgaris_218.fa
sed -i 's/>Chr09.*/>Chr09/g' Pvulgaris_218.fa
sed -i 's/>Chr10.*/>Chr10/g' Pvulgaris_218.fa
sed -i 's/>Chr11.*/>Chr11/g' Pvulgaris_218.fa

# Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr01.*/>Chr01/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr02.*/>Chr02/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr03.*/>Chr03/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr04.*/>Chr04/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr05.*/>Chr05/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr06.*/>Chr06/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr07.*/>Chr07/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr08.*/>Chr08/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr09.*/>Chr09/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr10.*/>Chr10/g' Pvulgaris5_593_696_v1.0.fa
sed -i 's/>Chr11.*/>Chr11/g' Pvulgaris5_593_696_v1.0.fa

# PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr01.*/>Chr01/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr02.*/>Chr02/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr03.*/>Chr03/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr04.*/>Chr04/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr05.*/>Chr05/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr06.*/>Chr06/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr07.*/>Chr07/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr08.*/>Chr08/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr09.*/>Chr09/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr10.*/>Chr10/g' PvulgarisLaborOvalle_670_v1.0.fa
sed -i 's/>Chr11.*/>Chr11/g' PvulgarisLaborOvalle_670_v1.0.fa

# PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr01.*/>Chr01/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr02.*/>Chr02/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr03.*/>Chr03/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr04.*/>Chr04/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr05.*/>Chr05/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr06.*/>Chr06/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr07.*/>Chr07/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr08.*/>Chr08/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr09.*/>Chr09/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr10.*/>Chr10/g' PvulgarisUI111_534_v1.0.fa
#sed -i 's/>Chr11.*/>Chr11/g' PvulgarisUI111_534_v1.0.fa
