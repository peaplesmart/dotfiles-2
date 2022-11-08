local M = {}

M.accelerated_jk = {
    n = {
        j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
        k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
    },
}
  
M.hop = {
    n = {
      ["<leader><leader>w"] = { "<cmd> HopWord <CR>", "hint all words" },
      ["<leader><leader>b"] = { "<cmd> HopWord <CR>", "hint all words" },
      ["<leader><leader>j"] = { "<cmd> HopLine <CR>", "hint line" },
      ["<leader><leader>k"] = { "<cmd> HopLine <CR>", "hint line" },
    },
}
  
M.general = {
    i = {
    -- Move line up and down
        ["<C-Up>"] = { "<cmd> :m-2<CR>", "move up" },
        ["<C-Down>"] = { "<cmd> :m+<CR>", "move up" },
    },

    n = {
        -- Toggle blame line
        ["<leader>bl"] = {"<cmd> :ToggleBlameLine <CR>", "toggle blame line" },
    },
}


return M