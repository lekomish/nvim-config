require "nvchad.mappings"

local map = vim.keymap.set

-- Basic
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle debug UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle debugger breakpoint" })
map("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "Start debugger" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Step over" })
