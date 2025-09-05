return {
  "epwalsh/obsidian.nvim",
  version = "*", -- Usar la última versión
  lazy = true,
  ft = "markdown", -- Cargar solo para archivos markdown
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal", -- 📁 Cambia por la ruta de tu vault
      },
    },
    notes_subdir = "notes",
    new_notes_location = "notes_subdir",
    disable_frontmatter = false,
    templates = {
      subdir = " ~/vaults/personal/RepoGit/3 - ZettelKasten/A - Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
  },
}
