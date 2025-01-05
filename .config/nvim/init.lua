-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")

lspconfig.sourcekit.setup({})
lspconfig.starpls.setup({})
