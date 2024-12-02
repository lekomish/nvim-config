require "nvchad.mappings"

local map = vim.keymap.set

-- Basic
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Git
map("n", "<leader>gl", "<cmd> Flog <cr>", { desc = "Git log" })
map("n", "<leader>gh", "<cmd> DiffviewFileHistory <cr>", { desc = "Git history" })
map("n", "<leader>gc", "<cmd> DiffviewOpen HEAD~1 <cr>", { desc = "Git last commit" })
map("n", "<leader>gh", "<cmd> DiffviewToggleFile <cr>", { desc = "Git toggle commits history" })

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

-- Go
map("n", "<leader>gsj", "<cmd> GoTagAdd json <cr>", { desc = "Go add JSON tag to struct" })
map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <cr>", { desc = "Go add YAML tag to struct" })
