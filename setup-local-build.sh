#!/bin/bash
# Setup script for local BlueBuild testing

echo "=== Installing Podman ==="
sudo apt-get update
sudo apt-get install -y podman

echo ""
echo "=== Installing BlueBuild CLI ==="
curl -s https://raw.githubusercontent.com/blue-build/cli/main/install.sh | bash

echo ""
echo "=== Verifying installations ==="
podman --version
bluebuild --version

echo ""
echo "=== Setup complete! ==="
echo ""
echo "To build your image locally, run:"
echo "  cd /home/cezary/workspace/bazzite-custom-image"
echo "  bluebuild build recipes/recipe.yml"
echo ""
echo "This will show you any build errors without needing to push to GitHub!"
