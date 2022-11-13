local present, nvimtree = pcall(require, "nvim-tree")

if not present then
  return
end

require("base64").load_highlight "nvimtree"

local options = {
  open_on_setup = true
}

nvimtree.setup(options)
