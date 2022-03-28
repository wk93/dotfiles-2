local lsp_installer = require("nvim-lsp-installer")


local function setup_servers()
  require'lspconfig'.denols.setup{
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
       'markdown',
    },
    init_options = {
	lint = true,
    },
  }
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
lsp_installer.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

