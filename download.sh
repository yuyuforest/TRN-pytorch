#!/bin/sh
# Download the pre-trained TRN models
echo 'Downloading TRNmultiscale on Something-Something'
wget -P pretrain http://relation.csail.mit.edu/models/TRN_something_RGB_BNInception_TRNmultiscale_segment8_best.pth.tar
wget -P pretrain http://relation.csail.mit.edu/models/something_categories.txt

echo 'Downloading TRNmultiscale on Jester'
wget -P pretrain http://relation.csail.mit.edu/models/TRN_jester_RGB_BNInception_TRNmultiscale_segment8_best.pth.tar
wget -P pretrain http://relation.csail.mit.edu/models/jester_categories.txt

echo 'Downloading TRNmultiscale on Moments in Time'
wget -P pretrain http://relation.csail.mit.edu/models/TRN_moments_RGB_InceptionV3_TRNmultiscale_segment8_best.pth.tar
wget -P pretrain http://relation.csail.mit.edu/models/moments_categories.txt

echo 'Downloading sample test video and extracted frames'
wget -P sample_data http://relation.csail.mit.edu/data/juggling.mp4
wget -P sample_data -r -nH --cut-dirs=1 --no-parent --reject="index.html*"  http://relation.csail.mit.edu/data/juggling_frames/
ls -1 $PWD/sample_data/juggling_frames/* > sample_data/juggling_frame_list.txt
