#!/bin/bash

export TRAIN_SET="3ddianshang"

python flux_batch_inference.py \
  --ckpt "/data/base_model/FLUX.1-dev/flux1-dev.safetensors" \
  --clip_l "/data/base_model/FLUX.1-dev/clip/clip_l.safetensors" \
  --t5xxl "/data/base_model/FLUX.1-dev/clip/t5xxl_fp16.safetensors" \
  --ae "/data/base_model/FLUX.1-dev/ae.safetensors" \
  --dtype bf16 \
  --output_dir "sample" \
  --seed 42 \
  --width 1024 \
  --height 1536 \
  --steps 50 \
  --guidance 3.5 \
  --cfg_scale 1.0 \
  --flux_dtype fp8 \
  --lora_weights "/data/Flux_train_20.3/output_refined_exhibition/flux-test-loraqkv-000007.safetensors;1.0" \
  --prompt_path "/data/Flux_train_20.3/train/qinglong/train/8_exhibition"