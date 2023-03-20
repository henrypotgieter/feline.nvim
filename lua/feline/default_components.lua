local vi_mode_utils = require('feline.providers.vi_mode')

local M = {
    statusline = {
        icons = {
            active = {},
            inactive = {},
        },
        noicons = {
            active = {},
            inactive = {},
        },
    },
    winbar = {
        icons = {
            active = {},
            inactive = {},
        },
        noicons = {
            active = {},
            inactive = {},
        },
    },
}

M.statusline.icons.active[1] = {
    {
        provider = '▊ ',
        hl = {
            fg = '#AA1133',
        },
    },
    {
        provider = 'vi_mode',
        hl = function()
            return {
                name = vi_mode_utils.get_mode_highlight_name(),
                fg = vi_mode_utils.get_mode_color(),
                style = 'bold',
            }
        end,
    },
    {
        provider = 'file_info',
        hl = {
            fg = 'white',
            bg = '#1111AA',
            style = 'bold',
        },
        left_sep = {
            { str = 'right_filled', hl = { bg = '#1111AA', fg = 'black' } },
            { str = ' ', hl = { bg = '#1111AA', fg = 'black' } },
        },
        right_sep = {
            { str = ' ', hl = { bg = '#1111AA', fg = 'NONE' } },
            'right_filled',
            ' ',
        },
    },
    {
        provider = 'file_size',
        right_sep = ' ',
    },
    {
        provider = 'file_perms',
        right_sep = {
            ' ',
            {
                str = 'right',
                hl = {
                    fg = 'fg',
                    bg = 'bg',
                },
            },
        },
    },
    {
        provider = 'position',
        left_sep = ' ',
        right_sep = {
            ' ',
            {
                str = 'right',
                hl = {
                    fg = 'fg',
                    bg = 'bg',
                },
            },
        },
    },
    {
        provider = 'isroot',
        hl = {
            fg = '#6393EB',
        },
        left_sep = {
            { str = ' U:', hl = { bg = bg, fg = fg } },
        },
        right_sep = {
            ' ',
            {
                str = 'right',
                hl = {
                    fg = 'fg',
                    bg = 'bg',
                },
            },
        },
    },
    {
        provider = 'relnumy',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'relnumn',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'numy',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'numn',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'bly',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'bln',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'diagy',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'diagn',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'spy',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'spn',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'wry',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'wrn',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'pastemodey',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'pastemoden',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'hlsy',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#000044',
            bg = '#22EE33',
            style = 'bold',
        },
    },
    {
        provider = 'hlsn',
        enabled = function()
           return vim.g.toggles_visible
        end,
        left_sep = ' ',
        hl = {
            fg = '#FFFFFF',
            bg = '#EE3322',
            style = 'bold',
        },
    },
    {
        provider = 'diagnostic_errors',
        hl = { fg = 'red' },
    },
    {
        provider = 'diagnostic_warnings',
        hl = { fg = 'yellow' },
    },
    {
        provider = 'diagnostic_hints',
        hl = { fg = 'cyan' },
    },
    {
        provider = 'diagnostic_info',
        hl = { fg = 'skyblue' },
    },
}

M.statusline.icons.active[2] = {
    {
        provider = 'git_branch',
        hl = {
            fg = 'white',
            bg = 'black',
            style = 'bold',
        },
        right_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'black',
            },
        },
    },
    {
        provider = 'git_diff_added',
        hl = {
            fg = 'green',
            bg = 'black',
        },
    },
    {
        provider = 'git_diff_changed',
        hl = {
            fg = 'orange',
            bg = 'black',
        },
    },
    {
        provider = 'git_diff_removed',
        hl = {
            fg = 'red',
            bg = 'black',
        },
        right_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'black',
            },
        },
    },
    {
        provider = 'line_percentage',
        hl = {
            style = 'bold',
        },
        left_sep = '  ',
        right_sep = ' ',
    },
    {
        provider = 'scroll_bar',
        hl = {
            fg = 'skyblue',
            style = 'bold',
        },
    },
}

M.statusline.icons.inactive[1] = {
    {
        provider = 'file_type',
        hl = {
            fg = 'white',
            bg = 'oceanblue',
            style = 'bold',
        },
        left_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'oceanblue',
            },
        },
        right_sep = {
            {
                str = ' ',
                hl = {
                    fg = 'NONE',
                    bg = 'oceanblue',
                },
            },
            'slant_right',
        },
    },
    -- Empty component to fix the highlight till the end of the statusline
    {},
}

M.statusline.noicons.active[1] = {
    {
        provider = '▊ ',
        hl = {
            fg = 'skyblue',
        },
    },
    {
        provider = 'vi_mode',
        hl = function()
            return {
                name = vi_mode_utils.get_mode_highlight_name(),
                fg = vi_mode_utils.get_mode_color(),
                style = 'bold',
            }
        end,
        right_sep = ' ',
        icon = '',
    },
    {
        provider = 'file_info',
        hl = {
            fg = 'white',
            bg = 'oceanblue',
            style = 'bold',
        },
        left_sep = '',
        right_sep = {
            {
                str = ' ',
                hl = {
                    fg = 'NONE',
                    bg = 'oceanblue',
                },
            },
            ' ',
        },
        icon = '',
    },
    {
        provider = 'file_size',
        right_sep = {
            ' ',
            {
                str = 'vertical_bar_thin',
                hl = {
                    fg = 'fg',
                    bg = 'bg',
                },
            },
        },
    },
    {
        provider = 'position',
        left_sep = ' ',
        right_sep = {
            ' ',
            {
                str = 'vertical_bar_thin',
                hl = {
                    fg = 'fg',
                    bg = 'bg',
                },
            },
        },
    },
    {
        provider = 'diagnostic_errors',
        hl = { fg = 'red' },
        icon = ' E-',
    },
    {
        provider = 'diagnostic_warnings',
        hl = { fg = 'yellow' },
        icon = ' W-',
    },
    {
        provider = 'diagnostic_hints',
        hl = { fg = 'cyan' },
        icon = ' H-',
    },
    {
        provider = 'diagnostic_info',
        hl = { fg = 'skyblue' },
        icon = ' I-',
    },
}

M.statusline.noicons.active[2] = {
    {
        provider = 'git_branch',
        hl = {
            fg = 'white',
            bg = 'black',
            style = 'bold',
        },
        right_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'black',
            },
        },
        icon = ' ',
    },
    {
        provider = 'git_diff_added',
        hl = {
            fg = 'green',
            bg = 'black',
        },
        icon = ' +',
    },
    {
        provider = 'git_diff_changed',
        hl = {
            fg = 'orange',
            bg = 'black',
        },
        icon = ' ~',
    },
    {
        provider = 'git_diff_removed',
        hl = {
            fg = 'red',
            bg = 'black',
        },
        right_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'black',
            },
        },
        icon = ' -',
    },
    {
        provider = 'line_percentage',
        hl = {
            style = 'bold',
        },
        left_sep = '  ',
        right_sep = ' ',
    },
    {
        provider = 'scroll_bar',
        hl = {
            fg = 'skyblue',
            style = 'bold',
        },
    },
}

M.statusline.noicons.inactive[1] = {
    {
        provider = 'file_type',
        hl = {
            fg = 'white',
            bg = 'oceanblue',
            style = 'bold',
        },
        left_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'oceanblue',
            },
        },
        right_sep = {
            {
                str = ' ',
                hl = {
                    fg = 'NONE',
                    bg = 'oceanblue',
                },
            },
            ' ',
        },
    },
    -- Empty component to fix the highlight till the end of the statusline
    {},
}

M.winbar.icons.active[1] = {
    {
        provider = 'file_info',
        hl = {
            fg = 'skyblue',
            bg = 'NONE',
            style = 'bold',
        },
    },
}

M.winbar.icons.inactive[1] = {
    {
        provider = 'file_info',
        hl = {
            fg = 'white',
            bg = 'NONE',
            style = 'bold',
        },
    },
}

M.winbar.noicons.active[1] = {
    {
        provider = 'file_info',
        hl = {
            fg = 'skyblue',
            bg = 'NONE',
            style = 'bold',
        },
        icon = '',
    },
}

M.winbar.noicons.inactive[1] = {
    {
        provider = 'file_info',
        hl = {
            fg = 'white',
            bg = 'NONE',
            style = 'bold',
        },
        icon = '',
    },
}

return M
