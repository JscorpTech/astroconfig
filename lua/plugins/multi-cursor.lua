return {
  {
    "mg979/vim-visual-multi",
    branch="master",
    init = function()
      vim.g.VM_mouse_mappings = 1
      vim.g.VM_maps = {
        ["Add Cursor Down"] = "<C-j>",
        ["Add Cursor Up"] = "<C-k>",
      }
  end,
  }
}
