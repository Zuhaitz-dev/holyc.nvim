-- lua/holyc/lsp.lua
-- LSP client configuration for a hypothetical 'holyc-lsp'

local M = {}

--- LSP on_attach function
local function on_attach(client, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = "LSP: " .. desc
    end
    vim.keymap.set("n", keys, func, { buffer = bufnr, noremap = true, silent = true, desc = desc })
  end

  nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
  nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")
  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
  nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
end

--- Setup function
function M.setup()
  -- This is a placeholder. You would need to build or install a real
  -- HolyC Language Server and make sure it's in your PATH.
  local server_cmd = { "holyc-lsp" }

  require("lspconfig").holyc.setup({
    -- The command to start the language server.
    cmd = server_cmd,

    -- The filetypes this server attaches to.
    filetypes = { "holyc" },

    -- Standard on_attach and capabilities setup.
    on_attach = on_attach,
    capabilities = require("cmp_nvim_lsp").default_capabilities(),

    -- Specify where the language server should look for project files.
    root_dir = require("lspconfig.util").find_git_ancestor(),
  })

  print("holyc.nvim: LSP setup is a TEMPLATE. A real 'holyc-lsp' executable is required.")
end

return M
