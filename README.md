# nvim-config

My personal [LazyVim](https://github.com/LazyVim/LazyVim) setup. It's LazyVim's defaults plus the extras and tweaks below — not a from-scratch config, just my version of it.

## What's different from stock LazyVim

- **Extras enabled**: docker, git, json, markdown, python, typescript, vscode (`lazyvim.json`)
- **Spell checking via LSP**: [cspell](https://cspell.org/) wired up as a custom `nvim-lspconfig` server (`lua/plugins/cspell.lua`) — needs [`@vlabo/cspell-lsp`](https://www.npmjs.com/package/@vlabo/cspell-lsp) on `$PATH` (`npm i -g @vlabo/cspell-lsp`)
- **Snacks explorer**: dotfiles shown, `.gitignore`-d files hidden (`lua/plugins/snacks.lua`)
- **Custom dictionary**: a few project-specific words added to the spellfile (`spell/en.utf-8.add`)

Everything else — keymaps, options, autocmds — is LazyVim stock; see [LazyVim's docs](https://lazyvim.github.io/) for the defaults.

## Install

Requires Neovim >= 0.11, and the usual [LazyVim prerequisites](https://lazyvim.github.io/installation) (a Nerd Font, `git`, `ripgrep`, `fd`, a C compiler for Treesitter).

```sh
git clone git@github.com:CrowderSoup/nvim-config.git ~/.config/nvim
nvim
```

Lazy.nvim will bootstrap itself and install all plugins on first launch. Run `:checkhealth` afterward to confirm everything is set up correctly.

## Structure

```
lua/
├── config/
│   ├── autocmds.lua   -- autocommands
│   ├── keymaps.lua    -- keymaps
│   ├── lazy.lua        -- lazy.nvim bootstrap + setup
│   └── options.lua     -- vim options
└── plugins/
    ├── cspell.lua       -- cspell LSP integration
    └── snacks.lua       -- snacks.nvim explorer/picker tweaks
```
<!-- sweep test sw-open -->
