# 💤 LazyVim for Rails Developer

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to read.

## Installation

### Install requirement's

Requeried for glab

- Go (required) [Download and install - The Go Programming Language](https://go.dev/doc/install)

Optional

| Name     | Link                                                                                                   |
| -------- | ------------------------------------------------------------------------------------------------------ |
| Lua      | [Lua: download](https://www.lua.org/download.html)                                                     |
| Lazygit  | [jesseduffield/lazygit: simple terminal UI for git commands](https://github.com/jesseduffield/lazygit) |
| Ripgrep  | [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)                                            |
| luarocks | [LuaRocks - The Lua package manager](https://luarocks.org/)                                            |

Create ~/.markdownlint.json config file for markdownlint-cli2, for example

```json
{
  "line-length": {
    "line_length": 180,
    "code_blocks": false,
    "tables": false
  },
  "ignore_code_blocks": true
}
```

- For git directory put this file in root, sometime linter not use setup config and require local config.

## Improvement

### Enable defaults

- ruby language
- neotest

### Additionals

- ERB - lint and format files
- Spec - run suite or selected test for debug
- Cucumber - run suite or selected test for debug
- Reek -check smell code
- LSP for ruby, definition, gems
- Markdown - linter and formatter with config
- Rails-nvim - plegin ala tpope Rails, fast move, partial, etc.
