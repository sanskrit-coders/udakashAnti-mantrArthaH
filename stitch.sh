#! /bin/bash
set -x #echo on
#BOOKDIR=~/books
BOOKDIR=~/books/vedAH
DESTDIRDIR=~/Dropbox/podcasts/samskrtam/udakashAnti-mantrArthaH
FILELIST="A=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_1_-_Kasinath_Sastri_Agase_1940.pdf  B=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_2_-_Kasinath_Sastri_Agase_1940.pdf  C=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_3_-_Kasinath_Sastri_Agase_1947.pdf D=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_4_-_Kasinath_Sastri_Agase_1946.pdf  E=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_5_-_Kasinath_Sastri_Agase_1946.pdf F=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_6_-_Kasinath_Sastri_Agase_1949.pdf G=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_7_-_Kasinath_Sastri_Agase_1949.pdf H=$BOOKDIR/ASS_042_Krishna_Yajurvediya_Taittiriya_Samhita_Part_8_-_Kasinath_Sastri_Agase_1951.pdf I=$BOOKDIR/ASS_036_Taittiriya_Aranyakam_With_Sayana_Bhashya_Part_1_-_Babasastri_Phadke_1898.pdf J=$BOOKDIR/ASS_036_Taittiriya_Aranyakam_With_Sayana_Bhashya_Part_2_-_Babasastri_Phadke_1927.pdf K=$BOOKDIR/ASS_037_Taittiriya_Brahmanam_with_Sayanabhashya_Part_1_-_Narayanasastri_Godbole_1934.pdf L=$BOOKDIR/ASS_037_Taittiriya_Brahmanam_with_Sayanabhashya_Part_2_-_Narayanasastri_Godbole_1898.pdf M=$BOOKDIR/ASS_037_Taittiriya_Brahmanam_with_Sayanabhashya_Part_3_-_Narayanasastri_Godbole_1898.pdf O=$BOOKDIR/rv_sayanabhasya_part1.pdf P=$BOOKDIR/rv_sayanabhasya_part2.pdf Q=$BOOKDIR/rv_sayanabhasya_part3.pdf R=$BOOKDIR/rv_sayanabhasya_part4.pdf X=$BOOKDIR/bodhAyana_html.pdf Y=$BOOKDIR/yajusha_2012_07_26.pdf Z=$BOOKDIR/bodhayana.pdf"
# pdftk $FILELIST cat X1 Z216-219 Y131 Y132 J289-290 Y132 L307 Y132 A75-76 Y132 P1036 Y133 D59 D70 output $DESTDIRDIR/udaka_shAnti_1_kalasha_sthApanam.pdf
# pdftk $FILELIST cat X1 Y19 O60 Y19 A10-15 Y19 Q146 Y19 R400 output $DESTDIRDIR/udaka_shAnti_2_vedAdiH.pdf
# pdftk $FILELIST cat  X1-2 Y134-135 A326-333 Y136-137 B315-324 output $DESTDIRDIR/udaka_shAnti_3_raxoghnAdiH.pdf
# pdftk $FILELIST cat  X2 Y137 J351-352 Y138 J354-356 output $DESTDIRDIR/udaka_shAnti_4_AraNyakAMshaH.pdf
# pdftk $FILELIST cat  X2 Y138 C93-99 Y139 D148 D150 Y140 D158-161 output $DESTDIRDIR/udaka_shAnti_5_saMhitAMshaH.pdf
#pdftk $FILELIST cat  X2 Y141 G213-214 E216-217 Y141-142 E286-290 output $DESTDIRDIR/udaka_shAnti_6_ApyAdikam.pdf
# pdftk $FILELIST cat  X2 Y144 F219 F223-227 Y145-146 F330-333 Y146-147 F444-451 Y148 F491-492 output $DESTDIRDIR/udaka_shAnti_7_sarpsUktAdiH.pdf
# pdftk $(ls $DESTDIRDIR/udaka_shAnti_*_*.pdf) output $DESTDIRDIR/udaka_shAnti_all.pdf
# C93-99 
# Y19 P1035 
for f in $(ls $DESTDIRDIR/udaka_shAnti_*_*.pdf); do
cpdf -scale-to-fit a4portrait $f -o $DESTDIRDIR/A4/${f##*/}
done

