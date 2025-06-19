require("config.lazy")
require("vim-options")
vim.cmd("highlight Normal guibg=NONE")
if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
  -- Toggle inlay hints
  map('<leader>th', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, '[T]oggle Inlay [H]ints')

  -- Enable inlay hints by default
  vim.lsp.inlay_hint.enable()lsp.inlay_hint.enable(true)
end

