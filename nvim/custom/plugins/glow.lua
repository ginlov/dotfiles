local present, glow = pcall(require, "glow")

if not present then
  return
end

local options = {
  glow_path = "/opt/homebrew/bin/glow", -- will be filled automatically with your glow bin in $PATH, if any
  glow_install_path = "/opt/homebrew/bin", -- default path for installing glow binary
  border = "shadow", -- floating window border config
  style = "dark", -- filled automatically with your current editor background, you can override using glow json style
  pager = false,
  width = 160,
  height = 100,
  width_ratio = 0.8, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
  height_ratio = 0.7,
}

glow.setup(options)
