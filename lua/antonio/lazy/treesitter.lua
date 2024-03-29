return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "gitignore", "go", "latex", "vue", "vimdoc",
        "javascript", "typescript", "python", "bash",
        "c", "cpp","lua", "rust", "css", "html", "json"},
        indent = {enable = false},
        autotag = {
          enable = true,
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          disable = {"latex"},
          additional_vim_regex_highlighting = false,
        }
      })
    end
  }

