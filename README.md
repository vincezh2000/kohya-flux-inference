# Stable Diffusion: Training, Generation, and Utility Scripts

This repository contains scripts for training, generating, and performing various utilities with Stable Diffusion. The scripts are based on modifications from [kohya-ss's sd-scripts (sd3 branch)](https://github.com/kohya-ss/sd-scripts/tree/sd3?tab=readme-ov-file#extract-lora-from-flux1-models), with contributions by Vincent.

## Quick Start
### Inference
To run inference, simply execute the following command in your Bash terminal:

```bash
bash inference_all_LoRA.sh
``` 

Make sure to specify your data path using the --prompt_path argument to load the prompt. The prompt files in the folder should follow the naming convention, such as 1.txt.

### Training(Under-construction)
To run batch training, simply execute the following command in your Bash terminal:

```bash
bash qinglong_batch_training.sh
``` 