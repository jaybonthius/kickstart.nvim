return {
  'echasnovski/mini.surround',
  version = '*',
  config = function()
    -- Disable 's' key to avoid conflict with mini.surround
    vim.keymap.set({ 'n', 'x' }, 's', '<Nop>')
    
    require('mini.surround').setup({
      mappings = {
        add = 'sa',            -- Add surrounding in Normal and Visual modes
        delete = 'sd',         -- Delete surrounding
        find = 'sf',           -- Find surrounding (to the right)
        find_left = 'sF',      -- Find surrounding (to the left)
        highlight = 'sh',      -- Highlight surrounding
        replace = 'sr',        -- Replace surrounding
        update_n_lines = 'sn', -- Update `n_lines`
        
        suffix_last = 'l',     -- Suffix to search with "prev" method
        suffix_next = 'n',     -- Suffix to search with "next" method
      },
      
      n_lines = 20,
      search_method = 'cover',
      silent = false,
    })
  end,
}