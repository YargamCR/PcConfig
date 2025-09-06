local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.ui.mini-animate" },

		-- import/override with your plugins
		{ import = "plugins" },
	},
})

require("tokyonight").setup({
	transparent = true, -- Hacer el fondo del esquema de colores transparente
	styles = {
		sidebars = "transparent", -- Hacer las barras laterales transparentes (ej. explorador de archivos)
		floats = "transparent", -- Hacer las ventanas flotantes transparentes (ej. ventanas emergentes)
	},

	on_colors = function(colors)
		-- Modificar el fondo para hacerlo menos transparente
		colors.bg = "#1f1f1f" -- Ajusta este valor para que el fondo sea más oscuro y menos transparente
	end,
	on_highlights = function(hl_groups)
		-- Si deseas personalizar algún grupo de resaltado adicional, puedes hacerlo aquí
	end,
})

-- Cargar el esquema de colores
vim.cmd("colorscheme tokyonight")
