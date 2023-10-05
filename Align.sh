#!/usr/bin/env bash
# Inspiration: https://github.com/maize-genetics/cassava-phg-v2/blob/main/v2/step2_align/align.sh
mkdir -p output

TOTAL_THREADS=$(nproc --all)
NUM_THREADS=$((TOTAL_THREADS - 2))

# Arguments:
#   1 - Reference FASTA
#   2 - Reference GFF
#   3 - Assembly FASTA
#   4 - Assembly Name
align () {
    REF=$1
    GFF=$2
    ASSEMBLY_FASTA=$3
    ASSEMBLY=$4

    # Index reference
    samtools faidx $REF

    # Get full-length CDS for reference
    REF_CDS="$REF.cds"
    anchorwave gff2seq -r $REF -i $GFF -o $REF_CDS

    # Map the full-length CDS to reference
    REF_CDS_SAM="$REF_CDS.sam"
    minimap2 -x splice -t $NUM_THREADS -k 12 -a -p 0.4 -N 20 $REF $REF_CDS > $REF_CDS_SAM

    # Index assembly
    samtools faidx $ASSEMBLY_FASTA

    # Query assembly
    ASSEMBLY_CDS="$ASSEMBLY.cds.sam"
    minimap2 -x splice -t $NUM_THREADS -k 12 -a -p 0.4 -N 20 $ASSEMBLY_FASTA $REF_CDS > $ASSEMBLY_CDS

    REF_DIR=$(echo $REF | sed 's/\/.*//')
    ASSEMBLY_OUTFILE="${ASSEMBLY}_${REF_DIR}"
    # Align assembly to reference
    anchorwave genoAli -i $GFF                 \
        -as $REF_CDS                           \
        -r  $REF                               \
        -a  $ASSEMBLY_CDS                      \
        -ar $REF_CDS_SAM                       \
        -s  $ASSEMBLY_FASTA                    \
        -n  "output/$ASSEMBLY_OUTFILE.anchors" \
        -R 1 -Q 1                              \
        -t $NUM_THREADS                        \
        -o  "output/$ASSEMBLY_OUTFILE.maf"     \
        -f  "output/$ASSEMBLY_OUTFILE.f_maf"   \
        -IV                                    \
        1>"$ASSEMBLY_OUTFILE.log"              \
        2>"$ASSEMBLY_OUTFILE.err"
}

align Tift23/Tift23D2B1-P1-P5/PearlMillet.Tift.CHROMOSOMES.fasta         \
      Tift23/Tift23D2B1-P1-P5/Tift23D2B1-P1-P5_Annotations/Tift_fil.gff3 \
      ICRM06777/PearlMillet.ICMR06777.CHROMOSOMES.fasta                  \
      ICRM06777

align 100192/pearl_millet_aseembly.fa                   \
      100192/pearl_millet_gff                           \
      ICRM06777/PearlMillet.ICMR06777.CHROMOSOMES.fasta \
      ICRM06777