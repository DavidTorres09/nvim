return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim'},
    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

      vim.keymap.set('n', '<S-Up>', 'v<Up>', {})
      vim.keymap.set('n', '<S-Down>', 'v<Down>', {})
      vim.keymap.set('n', '<S-Left>', 'v<Left>', {})
      vim.keymap.set('n', '<S-Right>', 'v<Right>', {})
      vim.keymap.set('v', '<S-Up>', '<Up>', {})
      vim.keymap.set('v', '<S-Right>', '<Right>', {})
      vim.keymap.set('v', '<S-Left>', '<Left>', {})
      vim.keymap.set('v', '<S-Down>', '<Down>', {})
      vim.keymap.set('i', '<S-Up>', '<Esc>v<Up>', {})
      vim.keymap.set('i', '<S-Down>', '<Esc>v<Down>', {})
      vim.keymap.set('i', '<S-Left>', '<Esc>v<Left>', {})
      vim.keymap.set('i', '<S-Right>', '<Esc>v<Right>', {})

      vim.keymap.set('v', '<C-c>', '+y<Esc>i', {})
      vim.keymap.set('v', '<C-x>', 'd<Esc>i', {})
      vim.keymap.set('n', '<C-v>', 'pi', {})
      vim.keymap.set('i', '<C-v>', '<Esc>pi', {})
      vim.keymap.set('i', '<C-z>', '<Esc>ui', {})  
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}  
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}
