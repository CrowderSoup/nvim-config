return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")
      local configs = require("lspconfig.configs")

      -- Register cspell as a custom LSP server (only if not already registered)
      if not configs.cspell then
        configs.cspell = {
          default_config = {
            cmd = { "cspell-lsp", "--stdio" },
            filetypes = {
              "markdown",
              "plaintext",
              "text",
              "javascript",
              "javascriptreact",
              "typescript",
              "typescriptreact",
              "python",
              "lua",
              "html",
              "css",
              "json",
              "yaml",
            },
            root_dir = lspconfig.util.root_pattern(
              "cspell.json",
              ".cspell.json",
              "cspell.config.js",
              "cspell.config.cjs",
              "cspell.config.yaml",
              "cspell.config.yml",
              ".git"
            ),
            single_file_support = true,
          },
        }
      end

      -- Add cspell to the servers list
      opts.servers = opts.servers or {}
      opts.servers.cspell = {}
    end,
  },
}
