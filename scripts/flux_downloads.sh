# Create all needed folders
mkdir -p /ComfyUI/models/loras
mkdir -p /ComfyUI/models/diffusion_models
mkdir -p /ComfyUI/models/vae
mkdir -p /ComfyUI/models/text_encoders
mkdir -p /ComfyUI/models/upscale_models

# Main FLUX Diffusion Model
wget -O /ComfyUI/models/diffusion_models/flux1-dev.safetensors \
"https://huggingface.co/bstungnguyen/Flux/resolve/main/flux1-dev.safetensors"

# LoRAs
wget -O /ComfyUI/models/loras/aidmaImageUprader-FLUX-v0.3.safetensors \
"https://huggingface.co/tungmtp/flux_skin_lora/resolve/main/aidmaImageUprader-FLUX-v0.3.safetensors"

wget -O /ComfyUI/models/loras/aidmaMJv7-FLUX-v0.1.safetensors \
"https://civitai.com/api/download/models/1470162?type=Model&format=SafeTensor"

# CivitAI LoRAs (with your API token)
curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
"https://civitai.com/api/download/models/1244911?type=Model&format=SafeTensor" \
-o /ComfyUI/models/loras/aidmaFLUXPro1.1-FLUX-v0.3.safetensors

curl -L -H "Authorization: Bearer 23a69a8c63706974c4347e5807472e8d" \
"https://civitai.com/api/download/models/980278?type=Model&format=SafeTensor" \
-o /ComfyUI/models/loras/aidmaHyperrealism-FLUX-v0.3.safetensors

# VAE
wget -O /ComfyUI/models/vae/ae.safetensors \
"https://huggingface.co/Comfy-Org/Lumina_Image_2.0_Repackaged/resolve/main/split_files/vae/ae.safetensors"

# Text Encoders
wget -O /ComfyUI/models/text_encoders/clip_l.safetensors \
"https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors"

wget -O /ComfyUI/models/text_encoders/t5xxl_fp16.safetensors \
"https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors"

# Upscaler
wget -O /ComfyUI/models/upscale_models/4xLSDIR.pth \
"https://github.com/Phhofm/models/raw/main/4xLSDIR/4xLSDIR.pth"

echo "✅ All FLUX workflow model downloads complete!"
