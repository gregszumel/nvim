
-- for file browser
local fb_actions = require "telescope".extensions.file_browser.actions

-- telscope settings
require("telescope").setup {

    defaults = {
        -- Default configuration for telescope goes here:
        mappings = {
            n = {
                --normal mappings
                -- deletes buffers with x in normal mode
                ['x'] = require('telescope.actions').delete_buffer
            }, -- n
            i = {
                -- insert mappings 
            }
        }
    },

  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      cwd_to_path = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
          ['-'] = fb_actions.goto_parent_dir
        },
      },
    },
  },
}

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

local builtin = require('telescope.builtin') vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})


-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>pv",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope buffers<CR>",
  { noremap = true }
)
