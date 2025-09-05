-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Abrir nota en Obsidian" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Crear nueva nota" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<CR>", { desc = "Nota diaria de hoy" })

vim.keymap.set("n", "<leader>od", "<cmd>cd ~/vaults/personal<CR>", { desc = "Abrir directorio de Obsidian" })

-- Python Keymaps

vim.keymap.set("n", "<leader>pd", "<cmd>cd ~/Documentos/Proyectos-Python/<CR>", { desc = "Directorio de python" })
