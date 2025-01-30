-- .luacheckrc

-- Define custom globals with descriptions
globals = {
  'vim',
  'LazyVim',
  'describe',
  'it',
  'before_each',
  'after_each',
  'setup',
  'teardown',
  'assert',
}

-- Set the Lua version
stds = {
  'lua54', -- Specify the Lua version to check against
}

ignore = {
  '142',
  '143',
  '211',
  'lowercase-global',
}
-- Enable specific checks
enable = {
  'unused', -- Enable checks for unused variables
  'redefined', -- Enable checks for redefined variables
}

-- Specify file patterns to apply different settings
files = {
  ['src/**/*.lua'] = {
    ignore = { '142', '143', '211', 'lowercase-global' }, -- Ignore unused variable and lowercase global warnings in src directory
  },
}
