#!/bin/bash
# general_setup.sh

# Civicomfy and Art Venture custom nodes for ComfyUI

mkdir -p /ComfyUI/custom_nodes
cd /ComfyUI/custom_nodes
git clone https://github.com/MoonGoblinDev/Civicomfy.git || echo "Civicomfy already cloned"
git clone https://github.com/sipherxyz/comfyui-art-venture.git || echo "Art Venture already installed"
cd -

# Upscalers
mkdir -p /ComfyUI/models/upscale_models

# SwinIR Large (HuggingFace)
if [ ! -f /ComfyUI/models/upscale_models/003_realSR_BSRGAN_DFOWMFC_s64w8_SwinIR-L_x4_GAN-with-dict-keys-params-and-params_ema.pth ]; then
  wget -O /ComfyUI/models/upscale_models/003_realSR_BSRGAN_DFOWMFC_s64w8_SwinIR-L_x4_GAN-with-dict-keys-params-and-params_ema.pth \
  "https://huggingface.co/licyk/sd-upscaler-models/resolve/main/SwinIR/003_realSR_BSRGAN_DFOWMFC_s64w8_SwinIR-L_x4_GAN-with-dict-keys-params-and-params_ema.pth"
else
  echo "SwinIR Large already exists, skipping."
fi

# SwinIR 4x (HuggingFace)
if [ ! -f /ComfyUI/models/upscale_models/SwinIR_4x.pth ]; then
  wget -O /ComfyUI/models/upscale_models/SwinIR_4x.pth \
  "https://huggingface.co/licyk/sd-upscaler-models/resolve/8e329a6a31d8060a58f5c7c6262448fc48f162a9/SwinIR/SwinIR_4x.pth"
else
  echo "SwinIR_4x.pth already exists, skipping."
fi

# RealESRGAN_x4Plus (CivitAI, use API token)
if [ ! -f /ComfyUI/models/upscale_models/RealESRGAN_x4Plus.pth ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/164898?type=Model&format=PickleTensor" \
  -o /ComfyUI/models/upscale_models/RealESRGAN_x4Plus.pth
else
  echo "RealESRGAN_x4Plus.pth already exists, skipping."
fi

# Remacri (CivitAI, use API token)
if [ ! -f /ComfyUI/models/upscale_models/Remacri.pth ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/164821?type=Model&format=PickleTensor" \
  -o /ComfyUI/models/upscale_models/Remacri.pth
else
  echo "Remacri.pth already exists, skipping."
fi

echo "✅ Custom nodes and upscalers checked/downloaded!"
