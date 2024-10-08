#!/bin/bash

# Activate the desired virtual environment
source /data/Flux_train_20.3/venv/bin/activate

export TRAIN_SET="3ddianshang_refined_stand_rank64_epoch10"

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
  --lora_weights "/data/Flux_train_20.3/output_refined_all_lora_epoch40/flux-test-loraqkv.safetensors" \
  --prompt_path "/data/kohya-flux-inference/test/prompt_3ddianshang_GPT_240925"
