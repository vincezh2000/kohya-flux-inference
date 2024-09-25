#!/bin/bash

# 定义参数的值
dims=(64 16 4)
alphas=(16 4 16)
output_dir_base="./output_refined_stand_lora"
max_train_epoches=10  # 移除等号两边的空格

# 循环遍历参数数组
for i in "${!dims[@]}"; do
  dim=${dims[$i]}
  alpha=${alphas[$i]}
  output_dir="${output_dir_base}_epoch${max_train_epoches}_dim${dim}"

  echo "Running training with network_dim=$dim, network_alpha=$alpha, output_dir=$output_dir"

  # 调用 PowerShell 并传递参数
  pwsh -Command "./data/Flux_train_20.3/train_flux_24GLora.ps1 -network_dim $dim -network_alpha $alpha -output_dir $output_dir -max_train_epoches $max_train_epoches"

done
