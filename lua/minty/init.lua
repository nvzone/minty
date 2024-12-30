local M = {}

M.config = {
  huefy = { border = false, prompt = "   Enter color : " },
  shades = { border = true, prompt = "   Enter color : " },
  nerd_icons = true,
}

M.setup = function(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
  M.icons = {
    save = M.config.nerd_icons and "󰆓" or "🖫",
    square = M.config.nerd_icons and "󱓻" or "◼",
    empty_square = M.config.nerd_icons and "" or "□",
    saturation = M.config.nerd_icons and "󰌁 " or "🌢",
    lightness = M.config.nerd_icons and "󰖨" or "☀",
    complementary = M.config.nerd_icons and "󱥚" or "🖌",
    title = M.config.nerd_icons and "󱥚" or "🖌",
    up = M.config.nerd_icons and "" or "↑",
    down = M.config.nerd_icons and "" or "↓",
    checked = M.config.nerd_icons and "" or "🗹",
    unchecked = M.config.nerd_icons and "" or "□",
    slider_thumb = M.config.nerd_icons or "⚪",
  }
end

return M
