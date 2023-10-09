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
        -t $NUM_THREADS                        \
        -o  "output/$ASSEMBLY_OUTFILE.maf"     \
        -f  "output/$ASSEMBLY_OUTFILE.f_maf"   \
        -IV                                    \
        1>"$ASSEMBLY_OUTFILE.log"              \
        2>"$ASSEMBLY_OUTFILE.err"
}

#/workdir/Vane/Vane/vane_commonBeans/downloads_sequences/Download
align /workdir/Vane/Vane/vane_commonBeans/downloads_sequences/Download/Pvulgaris_442_v2.0.fa\
      /workdir/Vane/Vane/vane_commonBeans/downloads_sequences/Download/Pvulgaris_442_v2.1.gene.gff3\
      /workdir/Vane/Vane/vane_commonBeans/downloads_sequences/Download/Pvulgaris_218.fa\
      Pvulgaris_218
