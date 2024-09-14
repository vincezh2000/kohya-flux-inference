#!/bin/bash

export TRAIN_SET="3ddianshang"

python flux_minimal_inference.py --ckpt "/data/base_model/FLUX.1-dev/flux1-dev.safetensors" \
--clip_l "/data/base_model/FLUX.1-dev/clip/clip_l.safetensors" \
--t5xxl "/data/base_model/FLUX.1-dev/clip/t5xxl_fp16.safetensors" \
--ae "/data/base_model/FLUX.1-dev/ae.safetensors" --dtype bf16 \
--out "sample" --seed 42 \
--width 1024 --height 1536 \
--steps 50 --guidance 3.5 --cfg_scale 1.0 \
--flux_dtype fp8 --lora "/data/Flux_train_20.3/output_refined_exhibition/flux-test-loraqkv-000007.safetensors;1.0" \
--prompt "The image presents a luxurious, elegant scene with a classical architectural aesthetic. At the center is a circular platform with a pool of clear blue water. The pool is bordered by a pristine white structure with gold accents, exuding a sense of refinement and grandeur. The structure has evenly spaced oval openings along its side, adding a touch of modernity to the otherwise classical design.The platform is positioned within a grand, open space framed by two towering marble columns. These columns have intricate golden capitals in the Corinthian style, further emphasizing the opulence of the scene. Above the columns is a large archway made of white marble, with light grey veining that enhances the luxurious feel. Through the archway, the background reveals a bright, clear sky with soft clouds, creating an inviting and serene atmosphere.The surroundings are primarily composed of white marble surfaces with subtle grey veins, accented by gold trims, adding to the polished and high-end look of the space. " \

