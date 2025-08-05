#!/bin/bash

# Create needed folders
mkdir -p /ComfyUI/models/loras
mkdir -p /ComfyUI/models/checkpoints
mkdir -p /ComfyUI/models/vae
mkdir -p /ComfyUI/models/text_encoders
mkdir -p /ComfyUI/models/upscale_models

# Checkpoints
if [ ! -f /ComfyUI/models/checkpoints/flux1-dev.safetensors ]; then
  wget -O /ComfyUI/models/checkpoints/flux1-dev.safetensors \
  "https://huggingface.co/bstungnguyen/Flux/resolve/main/flux1-dev.safetensors"
else
  echo "flux1-dev.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/checkpoints/CyberRealisticFlux-fp8.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/2036890?type=Model&format=SafeTensor&size=pruned&fp=fp8" \
  -o /ComfyUI/models/checkpoints/CyberRealisticFlux-fp8.safetensors
else
  echo "CyberRealisticFlux-fp8.safetensors already exists, skipping."
fi

# LoRAs
if [ ! -f /ComfyUI/models/loras/aidmaImageUprader-FLUX-v0.3.safetensors ]; then
  wget -O /ComfyUI/models/loras/aidmaImageUprader-FLUX-v0.3.safetensors \
  "https://huggingface.co/tungmtp/flux_skin_lora/resolve/main/aidmaImageUprader-FLUX-v0.3.safetensors"
else
  echo "aidmaImageUprader-FLUX-v0.3.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/aidmaMJv7-FLUX-v0.1.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/1662872?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/aidmaMJv7-FLUX-v0.1.safetensors
else
  echo "aidmaMJv7-FLUX-v0.1.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/aidmaFLUXPro1.1-FLUX-v0.3.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/1244911?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/aidmaFLUXPro1.1-FLUX-v0.3.safetensors
else
  echo "aidmaFLUXPro1.1-FLUX-v0.3.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/aidmaHyperrealism-FLUX-v0.3.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/980278?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/aidmaHyperrealism-FLUX-v0.3.safetensors
else
  echo "aidmaHyperrealism-FLUX-v0.3.safetensors already exists, skipping."
fi

# All your named LoRAs
if [ ! -f /ComfyUI/models/loras/epicGorgeousDetails-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/863655?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/epicGorgeousDetails-FLUX.safetensors
else
  echo "epicGorgeousDetails-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/xlabsFluxRealism-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/706528?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/xlabsFluxRealism-FLUX.safetensors
else
  echo "xlabsFluxRealism-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/yfgZaat-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/1210090?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/yfgZaat-FLUX.safetensors
else
  echo "yfgZaat-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/theVanguard-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/1312979?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/theVanguard-FLUX.safetensors
else
  echo "theVanguard-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/wanderersSemiRealisticPortraits-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/2038864?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/wanderersSemiRealisticPortraits-FLUX.safetensors
else
  echo "wanderersSemiRealisticPortraits-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/nsfwDUnlocked-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/2052807?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/nsfwDUnlocked-FLUX.safetensors
else
  echo "nsfwDUnlocked-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/CyberpunkAnimeStyle-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/747534?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/CyberpunkAnimeStyle-FLUX.safetensors
else
  echo "CyberpunkAnimeStyle-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/Metalbeing-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/840743?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/Metalbeing-FLUX.safetensors
else
  echo "Metalbeing-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/DetailedPerfectionStyle-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/931225?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/DetailedPerfectionStyle-FLUX.safetensors
else
  echo "DetailedPerfectionStyle-FLUX.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/loras/CumInMouth-FLUX.safetensors ]; then
  curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
  "https://civitai.com/api/download/models/1432614?type=Model&format=SafeTensor" \
  -o /ComfyUI/models/loras/CumInMouth-FLUX.safetensors
else
  echo "CumInMouth-FLUX.safetensors already exists, skipping."
fi

# VAE
if [ ! -f /ComfyUI/models/vae/ae.safetensors ]; then
  wget -O /ComfyUI/models/vae/ae.safetensors \
  "https://huggingface.co/Comfy-Org/Lumina_Image_2.0_Repackaged/resolve/main/split_files/vae/ae.safetensors"
else
  echo "ae.safetensors already exists, skipping."
fi

# Text Encoders
if [ ! -f /ComfyUI/models/text_encoders/clip_l.safetensors ]; then
  wget -O /ComfyUI/models/text_encoders/clip_l.safetensors \
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"
else
  echo "clip_l.safetensors already exists, skipping."
fi

if [ ! -f /ComfyUI/models/text_encoders/t5xxl_fp16.safetensors ]; then
  wget -O /ComfyUI/models/text_encoders/t5xxl_fp16.safetensors \
  "https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"
else
  echo "t5xxl_fp16.safetensors already exists, skipping."
fi

# Upscaler
if [ ! -f /ComfyUI/models/upscale_models/4xLSDIR.pth ]; then
  wget -O /ComfyUI/models/upscale_models/4xLSDIR.pth \
  "https://github.com/Phhofm/models/raw/main/4xLSDIR/4xLSDIR.pth"
else
  echo "4xLSDIR.pth already exists, skipping."
fi

echo "✅ All FLUX workflow model downloads checked and complete!"
