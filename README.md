# MadProgrammer's neovim config

Minimalist neovim configuration using [Lazy](https://github.com/folke/lazy.nvim)

### Installation

```shell
git clone https://github.com/Mad-Proger/neovim-config.git ~/.config/nvim
```

### Prerequisites

Neovim `>= v0.10.0`

I believe there are more, but error messages should be verbose enough
to understand what is missing.

### Tips & Tricks

* C++ autoformatting is using `clang-format`, thus it may be wise to put default
configuration file in home directory
* C++ code analysis is done using [`clangd`](https://clangd.llvm.org/). One may want
to configure it according to his preferences
