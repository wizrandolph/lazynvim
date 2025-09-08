-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    -- 删除默认的 <leader>/ 映射，并设置为前缀
    keys = {
      -- Step 1: 删除默认的 <leader>/ 映射
      { "<leader>/", nil },

      -- Step 2: 将 <leader>/ 设置为“前缀”（空映射，但保留键序列）
      { "<leader>/" },

      -- Step 3: 定义子映射
      {
        "<leader>//",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find()
        end,
        desc = "Grep in current buffer",
      },

      {
        "<leader>/g",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Live Grep (Project-wide)",
      },
    },
  },
}
