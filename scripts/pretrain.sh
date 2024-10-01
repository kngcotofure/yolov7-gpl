python -m torch.distributed.launch --nproc_per_node 2 --master_port 9527 train.py \
  --epochs 100 \
  --workers 8 \
  --device 0,1 \
  --sync-bn \
  --batch-size 20 \
  --data data/pretrain_gender.yaml \
  --img 640 640 \
  --cfg cfg/training/yolov7.yaml \
  --name 'pretrain-gender' \
  --hyp data/hyp.scratch.custom.yaml \
  --weight yolov7.pt


# python -m torch.distributed.launch --nproc_per_node 2 --master_port 6868 train.py \
#   --epochs 50 \
#   --workers 8 \
#   --device 0,1 \
#   --sync-bn \
#   --batch-size 64 \
#   --data data/pretrain_crow.yaml \
#   --img 640 640 \
#   --cfg cfg/training/yolov7.yaml \
#   --name 'pretrain-crowd' \
#   --hyp data/hyp.scratch.custom.yaml \
#   --weight pretrain-gender/best.pt \
#   --freeze 102
