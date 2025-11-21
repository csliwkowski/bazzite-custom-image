# Local Build Testing Guide

This guide will help you test your BlueBuild recipe locally before pushing to GitHub.

## Prerequisites Setup

Run the setup script to install Podman and BlueBuild CLI:

```bash
cd /home/cezary/workspace/bazzite-custom-image
./setup-local-build.sh
```

## Building Locally

Once setup is complete, you can build your image locally:

```bash
bluebuild build recipes/recipe.yml
```

This will:
- Pull the base image (ghcr.io/ublue-os/bazzite-gnome-nvidia)
- Execute all modules in your recipe
- Show any errors immediately without needing to push to GitHub

## Quick Commands

### Just validate the recipe (fast)
```bash
bluebuild validate recipes/recipe.yml
```

### Generate Containerfile to inspect
```bash
bluebuild generate recipes/recipe.yml -o Containerfile
```

### Build with custom tag
```bash
bluebuild build recipes/recipe.yml --tag my-test-build
```

### Build with verbose output
```bash
bluebuild build recipes/recipe.yml -v
```

## Troubleshooting

### Podman permission issues
If you get permission errors, you may need to enable rootless Podman:
```bash
podman system migrate
```

### Out of disk space
Clean up unused images:
```bash
podman system prune -a
```

### BlueBuild CLI not found
Add to your PATH:
```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## Benefits of Local Testing

- ✅ Catch errors immediately
- ✅ No GitHub Actions minutes used
- ✅ Faster iteration cycle
- ✅ Test changes before committing
- ✅ Debug issues interactively

## Next Steps

After local build succeeds:
1. Commit your changes
2. Push to GitHub
3. GitHub Actions will build and publish the image
