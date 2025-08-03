#!/bin/bash
# general_setup.sh

# Civicomfy and Art Venture custom nodes for ComfyUI

mkdir -p /ComfyUI/custom_nodes
cd /ComfyUI/custom_nodes
git clone https://github.com/MoonGoblinDev/Civicomfy.git || echo "Civicomfy already cloned"
git clone https://github.com/sipherxyz/comfyui-art-venture.git || echo "Art Venture already installed"
cd -
