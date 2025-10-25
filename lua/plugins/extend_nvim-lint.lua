-- ~/.config/nvim/lua/plugins/lint.lua
return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile', 'BufWritePost' },
  config = function()
    local lint = require('lint')

    -- Custom linter for reek (Ruby code smell detector)
    lint.linters.reek = {
      name = 'reek',
      cmd = 'reek',
      stdin = false,
      args = { '--format', 'json' },
      ignore_exitcode = true, -- Ignore non-zero exit codes (e.g., when smells are found)
      parser = function(output, _bufnr)
        local diagnostics = {}
        local ok, decoded = pcall(vim.json.decode, output)
        if not ok then
          vim.notify('Failed to parse reek output: ' .. output, vim.log.levels.ERROR)
          return diagnostics
        end
        for _, issue in ipairs(decoded or {}) do
          table.insert(diagnostics, {
            lnum = issue.lines[1] - 1, -- Adjust line number (0-based)
            col = 0,
            message = issue.message,
            severity = vim.diagnostic.severity.WARN,
            source = 'reek',
            code = issue.smell_type,
          })
        end
        return diagnostics
      end,
    }

    -- Custom linter for htmlbeautifier (used as a placeholder, no diagnostics)
    lint.linters.htmlbeautifier = {
      name = 'htmlbeautifier',
      cmd = 'htmlbeautifier',
      stdin = true,
      args = { '-b', '1' },
      ignore_exitcode = true, -- Ignore non-zero exit codes
      parser = function(_output, _bufnr)
        return {} -- No diagnostics, used as a formatter
      end,
    }

    -- Configure markdownlint-cli2 (Markdown linter)
    lint.linters['markdownlint-cli2'].args = {
      '--config',
      vim.fn.expand('~/.markdownlint.json'),
    }

    -- Configure luacheck (Lua linter)
    lint.linters.luacheck = {
      name = 'luacheck',
      cmd = 'luacheck',
      stdin = false,
      args = {
        '--formatter',
        'plain', -- Use plain format for easier parsing
        '--codes', -- Include error codes in output
        -- '--no-color', -- Disable color output for consistency
        '--config',
        vim.fn.expand('~/.luacheckrc'), -- Uncomment to use a custom config
      },
      ignore_exitcode = true, -- Ignore non-zero exit codes
      parser = require('lint.parser').from_errorformat('%f:%l:%c: %m', {
        source = 'luacheck',
        severity = vim.diagnostic.severity.WARN,
      }),
    }

    -- Linters by filetype
    lint.linters_by_ft = {
      lua = { 'luacheck' }, -- Lua linter
      markdown = { 'markdownlint-cli2' }, -- Markdown linter
      -- javascript = { 'prettier' }, -- JavaScript linter
      -- typescript = { 'prettier' }, -- TypeScript linter
      ruby = { 'reek' }, -- Ruby code smell detector
      go = { 'revive' }, -- Go linter
      eruby = { 'erb_lint' }, -- ERB template linter
      yaml = { 'yamllint' },
    }

    -- Автоматический линтинг
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost' }, {
      group = lint_augroup,
      callback = function() lint.try_lint() end,
    })

    -- Также линтим после паузы в редактировании
    vim.api.nvim_create_autocmd({ 'TextChanged', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function() lint.try_lint() end,
      desc = 'Lint after editing',
    })

    -- Ручной вызов
    vim.keymap.set('n', '<leader>cb', function() lint.try_lint() end, { desc = 'Lint current buffer' })
  end,
}
