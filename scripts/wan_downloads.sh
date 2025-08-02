# Create folders if needed
mkdir -p ComfyUI/models/diffusion_models
mkdir -p ComfyUI/models/loras
mkdir -p ComfyUI/models/vae
mkdir -p ComfyUI/models/text_encoders
mkdir -p ComfyUI/models/clip_vision
mkdir -p ComfyUI/models/upscale_models

# Main WAN Diffusion Model
wget -O ComfyUI/models/diffusion_models/wan2.1_i2v_720p_14B_bf16.safetensors \
"https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/diffusion_models/wan2.1_i2v_720p_14B_bf16.safetensors"

# LoRAs
wget -O ComfyUI/models/loras/Wan2.1-Fun-14B-InP-MPS.safetensors \
"https://huggingface.co/alibaba-pai/Wan2.1-Fun-Reward-LoRAs/blob/036886aa1424cf08d93f652990fa99cddb418db4/Wan2.1-Fun-14B-InP-MPS.safetensors"

wget -O ComfyUI/models/loras/Wan14B_RealismBoost.safetensors \
"https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/Wan14B_RealismBoost.safetensors"

wget -O ComfyUI/models/loras/DetailEnhancerV1.safetensors \
"https://huggingface.co/vrgamedevgirl84/Wan14BT2VFusioniX/resolve/main/OtherLoRa's/DetailEnhancerV1.safetensors"

wget -O ComfyUI/models/loras/Wan21_AccVid_I2V_480P_14B_lora_rank32_fp16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_AccVid_I2V_480P_14B_lora_rank32_fp16.safetensors"

wget -O ComfyUI/models/loras/Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_CausVid_14B_T2V_lora_rank32_v2.safetensors"

# VAE
wget -O ComfyUI/models/vae/Wan2_1_VAE_bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan2_1_VAE_bf16.safetensors"

# Text Encoder
wget -O ComfyUI/models/text_encoders/umt5-xxl-enc-bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/umt5-xxl-enc-bf16.safetensors"

# CLIP Vision (placeholder, update with a working link if you have it)
# wget -O ComfyUI/models/clip_vision/clip_vision_h.safetensors "YOUR_LINK_HERE"

# Upscaler / Video Interpolator
wget -O ComfyUI/models/upscale_models/rife49.pth \
"https://huggingface.co/hzwer/arXiv2020-RIFE/resolve/main/rife49.pth"

echo "✅ WAN workflow model asset downloads finished!"
