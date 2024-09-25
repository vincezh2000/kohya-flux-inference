#!/bin/bash

# 定义参数的值
dims=(64 128 256)
alphas=(16 32 64)
output_dir_base="./output_refined_all_lora_epoch"

# 循环遍历参数数组
for i in "${!dims[@]}"; do
  dim=${dims[$i]}
  alpha=${alphas[$i]}
  output_dir="${output_dir_base}$((i + 1))"

  echo "Running training with network_dim=$dim, network_alpha=$alpha, output_dir=$output_dir"

  # 调用 PowerShell 并传递参数
  pwsh -Command "./data/Flux_train_20.3/train_flux_24GLora.ps1 -network_dim $dim -network_alpha $alpha -output_dir $output_dir"

done
