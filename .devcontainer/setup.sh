#!/bin/bash

# Install Solana CLI
sh -c "$(curl -sSfL https://release.solana.com/v1.8.2/install)"

# Add Solana CLI to PATH
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
echo 'export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc

# Verify the installation
solana --version

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
echo 'source $HOME/.cargo/env' >> ~/.bashrc

# Install Anchor
cargo install --git https://github.com/project-serum/anchor --tag v0.18.0 anchor-cli --locked

# Verify the installation
anchor --version
