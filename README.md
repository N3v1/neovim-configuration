# Neovim Configurations

> My personal Neovim configuration, crafted entirely in Lua for efficiency and maintainability. Tailored for Apple development, web development and low-level programming, it provides a powerful yet flexible editing experience optimized for modern workflows.

## Overview

This repository contains my personal Neovim configuration, written entirely in Lua for optimal performance and maintainability. Designed with developers in mind, it combines a fast, responsive editing experience with powerful tools to boost productivity.

With features like Treesitter for enhanced syntax highlighting, Telescope for intuitive fuzzy finding, and seamless LSP integration for code intelligence, this setup is ideal for modern programming workflows. Plugins are managed and lazy-loaded using lazy.nvim, ensuring a snappy startup time without sacrificing functionality.

The configuration also includes a clean, customizable UI with icons, themes, and an informative statusline, making it both visually appealing and highly practical. Whether you’re just starting with Neovim or looking to level up your editor, this Lua-based setup is tailored for ease of use and extensibility.

### Table of Contents

1. Installation

    1.1 Prerequisites

    1.2 Step-by-Step Guide

2. GUI Overview

3. Keymaps

4. Customization

5. Troubleshooting

6. Contributing

7. License

8. Acknowledgments

## 1. Installation

Setting up Neovim with this configuration is straightforward but requires a few dependencies. This guide will walk you through everything you need to get started with a Neovim setup tailored for both Apple development (macOS and iOS) and web development.

### 1.1 Prerequisites

Ensure the following dependencies are installed:

- **Neovim** (v0.9 or newer)
- **Git** (v2.39.5 or newer)
- **LazyGit** (v0.44.1 or newer)
- **Node.js** (v20.11.1 or newer)
- **GCC or Clang** (clang version 16.0.0 or newer)

#### Installing Dependencies

Follow these instructions based on your operating system to install the prerequisites:

##### macOS

Use Homebrew, a package manager for macOS, to install the dependencies:

```sh
# Install Neovim
brew install neovim

# Install Git
brew install git

# Install Node.js
brew install node

# Install GCC (Clang should already be available via Xcode command line tools)
brew install gcc
```

##### Linux (Ubuntu/Debian)

Use the following commands to install the dependencies:

```sh
$ sudo apt update
$ sudo apt install neovim git nodejs npm build-essential
```

### 1.2 Step-By-Step Installation

After ensuring the prerequisites are installed, follow these steps to set up your Neovim configuration:

#### Step 1: Clone the Repository

Create a `.config` folder in your home directory (if it doesn't exist) and clone the configuration repository:

```sh
$ cd
$ mkdir -p .config/
$ git clone https://github.com/N3v1/neovim-config.git ~/.config/nvim
```

#### Step 2: Install plugins and LSP

Open Neovim and run the following command to install the required plugins:

```vim
:Lazy
```

When the LazyVim window appears, press "I" to install all plugins and tools if they do not start automatically.

#### Step 3: Verify the Installation

Once all steps are complete, reopen Neovim and run the following command to verify that all plugins and language servers are working:

```sh
$ nvim
```

At the greeting screen, type:

```vim
:checkhealth
```

At the greeting screen type

```vim
:checkhealth
```