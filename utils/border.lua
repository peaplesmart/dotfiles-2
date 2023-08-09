local M = {}

M.borders = {
    rounded               = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    single                = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    double                = { '═', '║', '═', '║', '╔', '╗', '╝', '╚' },
    double_header         = { '═', '│', '─', '│', '╒', '╕', '┘', '└' },
    double_bottom         = { '─', '│', '═', '│', '┌', '┐', '╛', '╘' },
    double_horizontal     = { '═', '│', '═', '│', '╒', '╕', '╛', '╘' },
    double_left           = { '─', '│', '─', '│', '╓', '┐', '┘', '╙' },
    double_right          = { '─', '│', '─', '│', '┌', '╖', '╜', '└' },
    double_vertical       = { '─', '│', '─', '│', '╓', '╖', '╜', '╙' },
    vintage               = { '-', '|', '-', '|', '+', '+', '+', '+' },
    rounded_clc           = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
    single_clc            = { '┌', '─', '┐', '│', '┘', '─', '└', '│' },
    double_clc            = { '╔', '═', '╗', '║', '╝', '═', '╚', '║' },
    double_header_clc     = { '╒', '═', '╕', '│', '┘', '─', '└', '│' },
    double_bottom_clc     = { '┌', '─', '┐', '│', '╛', '═', '╘', '│' },
    double_horizontal_clc = { '╒', '═', '╕', '│', '╛', '═', '╘', '│' },
    double_left_clc       = { '╓', '─', '┐', '│', '┘', '─', '╙', '│' },
    double_right_clc      = { '┌', '─', '╖', '│', '╜', '─', '└', '│' },
    double_vertical_clc   = { '╓', '─', '╖', '│', '╜', '─', '╙', '│' },
    vintage_clc           = { '+', '-', '+', '|', '+', '-', '+', '|' },
    empty                 = { ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ' },
  }

return M
