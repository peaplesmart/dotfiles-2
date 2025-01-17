local present, noice = pcall(require, "noice")

if not present then
  return
end

noice.setup {
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
    format = {
      cmdline = { pattern = "^:", icon = "󰘳 ", lang = "vim" },
      search_down = { kind = "search", pattern = "^/", icon = "󰩊 ", lang = "regex" },
      search_up = { kind = "search", pattern = "^%?", icon = "󰩊 ", lang = "regex" },
      filter = { pattern = "^:%s*!", icon = "󰻿 ", lang = "bash" },
      lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
      help = { pattern = "^:%s*he?l?p?%s+", icon = "󰞋 " },
    },
  },
  popupmenu = {
    enabled = true, -- enables the Noice popupmenu UI
    backend = "cmp", -- backend to use to show regular cmdline completions
  },
  routes = {
    {
      filter = {
        event = "lsp",
        any = {
          { find = "formatting" },
          { find = "Diagnosing" },
          { find = "Diagnostics" },
          { find = "diagnostics" },
          { find = "code_action" },
          { find = "Processing full semantic tokens" },
          { find = "symbols" },
          { find = "completion" },
        },
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "notify",
        any = {
          -- Neo-tree
          { find = "Toggling hidden files: true" },
          { find = "Toggling hidden files: false" },
          { find = "Operation canceled" },

          -- Telescope
          { find = "Nothing currently selected" },
          { find = "No information available" },
          { find = "Highlight group" },
          { find = "no manual entry for" },
          { find = "not have parser for" },

          -- ts
          { find = "_ts_parse_query" },
        },
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_show",
        kind = "",
        any = {

          -- Edit
          { find = "%d+ less lines" },
          { find = "%d+ fewer lines" },
          { find = "%d+ more lines" },
          { find = "%d+ change;" },
          { find = "%d+ line less;" },
          { find = "%d+ more lines?;" },
          { find = "%d+ fewer lines;?" },
          { find = '".+" %d+L, %d+B' },
          { find = "%d+ lines yanked" },

          -- Save
          { find = " bytes written" },

          -- Redo/Undo
          { find = " changes; before #" },
          { find = " changes; after #" },
          { find = "1 change; before #" },
          { find = "1 change; after #" },

          -- Yank
          { find = " lines yanked" },

          -- Move lines
          { find = " lines moved" },
          { find = " lines indented" },

          -- Bulk edit
          { find = " fewer lines" },
          { find = " more lines" },
          { find = "1 more line" },
          { find = "1 line less" },

          -- General messages
          { find = "Already at newest change" },
          { find = "Already at oldest change" },
          { find = "E21: Cannot make changes, 'modifiable' is off" },
        },
      },
      opts = { skip = true },
    },
  },
  lsp = {
    progress = {
      enabled = false,
    },
    signature = {
      enabled = true,
      auto_open = {
        enabled = true,
        trigger = true,
        luasnip = true,
        throttle = 50,
      },
      view = nil, -- when nil, use defaults from documentation
      ---@type NoiceViewOptions
      opts = {
        focusable = false,
        size = {
          max_height = 15,
          max_width = 60,
        },
        win_options = {
          wrap = false,
        },
      },
    },
    documentation = {
      opts = {
        border = {
          padding = { 0, 0 },
        },
      },
    },
    override = {
      -- override the default lsp markdown formatter with Noice
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      -- override the lsp markdown formatter with Noice
      ["vim.lsp.util.stylize_markdown"] = true,
      -- override cmp documentation with Noice (needs the other options to work)
      ["cmp.entry.get_documentation"] = true,
    },
  },
  ---@type NoiceConfigViews
  views = {
    cmdline_popup = {
      position = {
        row = 5,
        col = "50%",
      },
      size = {
        width = 60,
        height = "auto",
      },
    },
    popupmenu = {
      relative = "editor",
      position = {
        row = 8,
        col = "50%",
      },
      size = {
        width = 60,
        height = 10,
      },
      border = {
        style = "rounded",
        padding = { 0, 1 },
      },
      win_options = {
        winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
      },
    },
    mini = {
      zindex = 100,
      win_options = { winblend = 0 },
    },
  },
  presets = {
    bottom_search = true,
    command_palette = true,
    lsp_doc_border = true,
    inc_rename = true,
  },
}

dofile(vim.g.base46_cache .. "notify")
