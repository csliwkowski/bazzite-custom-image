#!/usr/bin/env bash
set -euo pipefail

# Add COPR repo
curl -Lo /etc/yum.repos.d/dwmw2-openconnect.repo \
    https://copr.fedorainfracloud.org/coprs/dwmw2/openconnect/repo/fedora-43/dwmw2-openconnect-fedora-43.repo

# Override with COPR version
rpm-ostree override replace \
    --experimental \
    --from repo=copr:copr.fedorainfracloud.org:dwmw2:openconnect \
    openconnect openconnect-libs
