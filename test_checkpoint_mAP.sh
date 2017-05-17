#!/bin/bash

#loop through checkpoints
for iter in {1..11}
do
  echo Calculting mAP for checkpoint: $[iter*10000]
  python ~/faster_rcnn/faster_rcnn/test_net.py --gpu 0 --weights ~/faster_rcnn/output/test/voc_2007_trainval/VGGnet_fast_rcnn_iter_$[iter*10000].ckpt --imdb voc_2007_test --cfg ~/faster_rcnn/experiments/cfgs/faster_rcnn_end2end.yml --network VGGnet_test
done
