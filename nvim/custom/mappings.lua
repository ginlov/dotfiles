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

return M
