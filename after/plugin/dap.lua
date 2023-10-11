local nnoremap = require("remcoe33.keymap").nnoremap
local dap = require("dap")
local dapui = require("dapui")

local silent = { silent = true }

nnoremap("<F2>", dap.terminate, silent)
nnoremap("<F5>", dap.continue, silent)
-- nnoremap("<F10>", dap.step_over, silent)
nnoremap("<F10>", dap.step_into, silent)
nnoremap("<F12>", dap.step_out, silent)

nnoremap("<leader>du", dapui.toggle, silent)
nnoremap(
  "<leader>dj",
  function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: "), nil, vim.fn.input("Log point message: ")) end,
  silent
)
nnoremap("<leader>ddd", dap.clear_breakpoints, silent)
nnoremap("<leader>dk", dap.toggle_breakpoint, silent)

require("dapui").setup({
  mappings = { expand = { "o", "<2-LeftMouse>" }, open = "<CR>" },
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.5 },
        { id = "breakpoints", size = 0.15 },
        { id = "stacks", size = 0.2 },
        { id = "watches", size = 0.15 },
      },
      size = 0.3,
      position = "left",
    },
    { elements = { "repl", "console" }, size = 0.3, position = "bottom" },
  },
})

require("nvim-dap-virtual-text").setup()
require('dap-go').setup()
