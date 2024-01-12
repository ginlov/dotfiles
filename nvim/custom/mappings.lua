local M = {}

M.osc52 = {
  n = {
    ["<leader>c"] = {
      function ()
        require("osc52").copy_operator()
      end,
    },
  },

  v = {
    ["<leader>c"] = {
      function ()
        require("osc52").copy_visual()
      end,
    },
  },
}

M.floaterm = {
  n = {
    -- create
    ["<leader>t"] = { "<cmd> FloatermNew <CR>", "create new terminal" },

    -- toggle
    ["<C-b>"] = { "<cmd> FloatermToggle <CR>", "toggle terminal" },
  },

  t = {
    -- toggle
    ["<C-b>"] = { "<cmd> FloatermToggle <CR>", "toggle terminal" },
  }
}

return M
