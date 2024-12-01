require "nvchad.mappings"

local map = vim.keymap.set

-- Basic
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Git
map("n", "<leader>gl", ":Flog <cr>", { desc = "Git log" })
map("n", "<leader>gh", ":DiffviewFileHistory <cr>", { desc = "Git history" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1 <cr>", { desc = "Git last commit" })
map("n", "<leader>gh", ":DiffviewToggleFile <cr>", { desc = "Git toggle commits history" })

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Debug toggle UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Debug toggle breakpoint" })
map("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "Debug start" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Debug step over" })
