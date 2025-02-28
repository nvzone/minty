local M = {}

M.config = {
  huefy = {
    border = false,
    prompt = "   Enter color : ",

    -- func must return { row, col }
    position = "cursor", -- cursor | center | func(w, h)
  },
  shades = {
    border = true,
    prompt = "   Enter color : ",

    -- func must return { row, col }
    position = "cursor", -- cursor | center | func(w, h)
  },
}

M.setup = function(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

return M
