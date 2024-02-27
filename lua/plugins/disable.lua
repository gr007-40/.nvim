-- Disable certain lazyvim plugins
local function disable(list)
  local ret = {}
  for _, p in ipairs(list) do
    table.insert(ret, {
      p,
      enabled = false,
    })
  end
  return ret
end

return disable({
  -- "rcarriga/nvim-notify",
  -- "folke/noice.nvim",
  "folke/flash.nvim",
  "nvim-pack/nvim-spectre",
})
