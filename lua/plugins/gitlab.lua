return {
  'harrisoncramer/gitlab.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'stevearc/dressing.nvim', -- Recommended but not required. Better UI for pickers.
    enabled = true,
  },
  build = function()
    require('gitlab.server').build(true)
  end, -- Builds the Go binary
  config = function()
    require('gitlab').setup( -- Uses delta reviewer by default
      {
        reviewer_settings = {
          diffview = {
            imply_local = false, -- If true, will attempt to use --imply_local option when calling |:DiffviewOpen|
          },
        },
        discussion_tree = { -- The discussion tree that holds all comments
          auto_open = false, -- Automatically open when the reviewer is opened
          switch_view = 'S', -- Toggles between the notes and discussions views
          default_view = 'discussions', -- Show "discussions" or "notes" by default
          blacklist = {}, -- List of usernames to remove from tree (bots, CI, etc)
          jump_to_file = 'o', -- Jump to comment location in file
          jump_to_reviewer = 'm', -- Jump to the location in the reviewer window
          edit_comment = 'e', -- Edit comment
          delete_comment = 'dd', -- Delete comment
          reply = 'r', -- Reply to comment
          toggle_node = 't', -- Opens or closes the discussion
          toggle_all_discussions = 'T', -- Open or close separately both resolved and unresolved discussions
          toggle_resolved_discussions = 'R', -- Open or close all resolved discussions
          toggle_unresolved_discussions = 'U', -- Open or close all unresolved discussions
          keep_current_open = false, -- If true, current discussion stays open even if it should otherwise be closed when toggling
          toggle_resolved = 'p', -- Toggles the resolved status of the whole discussion
          position = 'left', -- "top", "right", "bottom" or "left"
          open_in_browser = 'b', -- Jump to the URL of the current note/discussion
          size = '20%', -- Size of split
          relative = 'editor', -- Position of tree split relative to "editor" or "window"
          resolved = '✓', -- Symbol to show next to resolved discussions
          unresolved = '-', -- Symbol to show next to unresolved discussions
          tree_type = 'simple', -- Type of discussion tree - "simple" means just list of discussions, "by_file_name" means file tree with discussions under file
          winbar = nil, -- Custom function to return winbar title, should return a string. Provided with WinbarTable (defined in annotations.lua)
          -- If using lualine, please add "gitlab" to disabled file types, otherwise you will not see the winbar.
        },
      }
    )
  end,
}
