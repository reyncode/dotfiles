local cmp = require("cmp")

vim.g.cmp_toggle = true

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end
  },
  mapping = {
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
  },
  window = {
    completion = cmp.config.window.bordered(),
  },
  enabled = function()
      return vim.g.cmp_toggle
  end,

})

vim.cmd([[
augroup NvimCmp
   au!
   au FileType TelescopePrompt lua require('cmp').setup.buffer { enabled = false }
augroup END
]])
