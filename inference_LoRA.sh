python flux_minimal_inference.py --ckpt "/data/base_model/FLUX.1-dev/flux1-dev.safetensors"
--clip_l "/data/base_model/FLUX.1-dev/clip/clip_l.safetensors"
--t5xxl "/data/base_model/FLUX.1-dev/clip/t5xxl_fp16.safetensors"
--ae "/data/base_model/FLUX.1-dev/ae.safetensors" --dtype bf16
--out sample --seed 42
--flux_dtype fp8 --offload --lora "/data/Flux_train_20.3/output_refined_exhibition/flux-test-loraqkv-000007.safetensors;1.0"
--prompt "a cat holding a sign that says hello world"

