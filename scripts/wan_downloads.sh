#!/bin/bash

# Create all needed folders
mkdir -p /ComfyUI/models/loras
mkdir -p /ComfyUI/models/diffusion_models
mkdir -p /ComfyUI/models/vae
mkdir -p /ComfyUI/models/text_encoders
mkdir -p /ComfyUI/models/upscale_models

# WAN 2.2 Diffusion Models

if [ ! -f /ComfyUI/models/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors ]; then
  wget -O /ComfyUI/models/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors \
  "https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_i2v_high_noise_14B_fp16.safetensors"
else
  echo "wan2.2_i2v_high_noise_14B_fp16.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors ]; then
  wget -O /ComfyUI/models/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors \
  "https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_i2v_low_noise_14B_fp16.safetensors"
else
  echo "wan2.2_i2v_low_noise_14B_fp16.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors ]; then
  wget -O /ComfyUI/models/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors \
  "https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_t2v_high_noise_14B_fp16.safetensors"
else
  echo "wan2.2_t2v_high_noise_14B_fp16.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors ]; then
  wget -O /ComfyUI/models/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors \
  "https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_t2v_low_noise_14B_fp16.safetensors"
else
  echo "wan2.2_t2v_low_noise_14B_fp16.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/diffusion_models/wan2.2_ti2v_5B_fp16.safetensors ]; then
  wget -O /ComfyUI/models/diffusion_models/wan2.2_ti2v_5B_fp16.safetensors \
  "https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/diffusion_models/wan2.2_ti2v_5B_fp16.safetensors"
else
  echo "wan2.2_ti2v_5B_fp16.safetensors already exists, skipping."
fi

# Wan 2.2 LoRAs

if [ ! -f /ComfyUI/models/loras/Wan2.2-Lightning_T2V-A14B-4steps-lora_HIGH_fp16.safetensors ]; then
  wget -O /ComfyUI/models/loras/Wan2.2-Lightning_T2V-A14B-4steps-lora_HIGH_fp16.safetensors \
  "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan22-Lightning/Wan2.2-Lightning_T2V-A14B-4steps-lora_HIGH_fp16.safetensors"
else
  echo "Wan2.2-Lightning_T2V-A14B-4steps-lora_HIGH_fp16.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/Wan2.2-Lightning_T2V-A14B-4steps-lora_LOW_fp16.safetensors ]; then
  wget -O /ComfyUI/models/loras/Wan2.2-Lightning_T2V-A14B-4steps-lora_LOW_fp16.safetensors \
  "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan22-Lightning/Wan2.2-Lightning_T2V-A14B-4steps-lora_LOW_fp16.safetensors"
else
  echo "Wan2.2-Lightning_T2V-A14B-4steps-lora_LOW_fp16.safetensors already exists, skipping."
fi


# LoRAs 
if [ ! -f /ComfyUI/models/loras/Wan2.1-Fun-14B-InP-MPS.safetensors ]; then
  wget -O /ComfyUI/models/loras/Wan2.1-Fun-14B-InP-MPS.safetensors \
  "https://huggingface.co/alibaba-pai/Wan2.1-Fun-Reward-LoRAs/resolve/036886aa1424cf08d93f652990fa99cddb418db4/Wan2.1-Fun-14B-InP-MPS.safetensors"
else
  echo "Wan2.1-Fun-14B-InP-MPS.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/Wan14B_RealismBoost.safetensors ]; then
  wget -O /ComfyUI/models/loras/Wan14B_RealismBoost.safetensors \
  "https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/Wan14B_RealismBoost.safetensors"
else
  echo "Wan14B_RealismBoost.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/DetailEnhancerV1.safetensors ]; then
  wget -O /ComfyUI/models/loras/DetailEnhancerV1.safetensors \
  "https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/DetailEnhancerV1.safetensors"
else
  echo "DetailEnhancerV1.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/Wan21_AccVid_I2V_480P_14B_lora_rank32_fp16.safetensors ]; then
  wget -O /ComfyUI/models/loras/Wan21_AccVid_I2V_480P_14B_lora_rank32_fp16.safetensors \
  "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_AccVid_I2V_480P_14B_lora_rank32_fp16.safetensors"
else
  echo "Wan21_AccVid_I2V_480P_14B_lora_rank32_fp16.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors ]; then
  wget -O /ComfyUI/models/loras/Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors \
  "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors"
else
  echo "Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors already exists, skipping."
fi

# VAE

if [ ! -f /ComfyUI/models/vae/Wan2.2_VAE.pth ]; then
  wget -O /ComfyUI/models/vae/Wan2.2_VAE.pth \
  "https://huggingface.co/Wan-AI/Wan2.2-TI2V-5B/resolve/main/Wan2.2_VAE.pth"
else
  echo "Wan2.2_VAE.pth already exists, skipping."
fi

if [ ! -f /ComfyUI/models/vae/Wan2_1_VAE_bf16.safetensors ]; then
  wget -O /ComfyUI/models/vae/Wan2_1_VAE_bf16.safetensors \
  "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan2_1_VAE_bf16.safetensors"
else
  echo "Wan2_1_VAE_bf16.safetensors already exists, skipping."
fi

# Text Encoder
if [ ! -f /ComfyUI/models/text_encoders/umt5-xxl-enc-bf16.safetensors ]; then
  wget -O /ComfyUI/models/text_encoders/umt5-xxl-enc-bf16.safetensors \
  "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/umt5-xxl-enc-bf16.safetensors"
else
  echo "umt5-xxl-enc-bf16.safetensors already exists, skipping."
fi

# Upscaler / Video Interpolator (standard RIFE)
if [ ! -f /ComfyUI/models/upscale_models/rife49.pth ]; then
  wget -O /ComfyUI/models/upscale_models/rife49.pth \
  "https://huggingface.co/hzwer/arXiv2020-RIFE/resolve/main/rife49.pth"
else
  echo "rife49.pth already exists, skipping."
fi

# Upscaler / Video Interpolator (Isi99999 mirror)
if [ ! -f /ComfyUI/models/upscale_models/rife49_isi99999.pth ]; then
  wget -O /ComfyUI/models/upscale_models/rife49_isi99999.pth \
  "https://huggingface.co/Isi99999/Frame_Interpolation_Models/resolve/main/rife49.pth"
else
  echo "rife49_isi99999.pth already exists, skipping."
fi

echo "✅ WAN workflow model downloads checked and complete!"
