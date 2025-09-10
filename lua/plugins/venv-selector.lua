return {
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp", -- 用 latest 的 regexp 分支（搜索效果更好）
    dependencies = {
      "neovim/nvim-lspconfig", -- LSP 支持
      "nvim-telescope/telescope.nvim", -- Telescope 列表显示
    },
    opts = {
      -- 开启搜索功能
      name = "venv, .venv",
      auto_refresh = true, -- 切换目录时自动刷新 venv 列表
      auto_activate = true, -- 找到符合条件的就自动激活
    },
    keys = {
      -- 手动选择虚拟环境
      { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },
}
