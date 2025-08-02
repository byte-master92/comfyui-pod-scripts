#!/bin/bash
# general_setup.sh

# Civicomfy custom node
mkdir -p ComfyUI/custom_nodes
cd ComfyUI/models/custom_nodes
git clone https://github.com/MoonGoblinDev/Civicomfy.git || echo "Civicomfy already cloned"
cd -
