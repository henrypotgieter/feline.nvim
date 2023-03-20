local api = vim.api

local M = {}

function M.pastemodey()
    if vim.opt.paste:get() == true then
        return ' PT '
    else
        return ''
    end
end

function M.pastemoden()
    if vim.opt.paste:get() == false then
        return ' PT '
    else
        return ''
    end
end

function M.spy()
    if vim.o.spell == true then
        return ' SP '
    else
        return ''
    end
end

function M.spn()
    if vim.o.spell == false then
        return ' SP '
    else
        return ''
    end
end

function M.wry()
    if vim.o.wrap == true then
        return ' WR '
    else
        return ''
    end
end

function M.wrn()
    if vim.o.wrap == false then
        return ' WR '
    else
        return ''
    end
end

function M.bly()
    if vim.b.__indent_blankline_active == true then
        return ' BL '
    else
        return ''
    end
end

function M.bln()
    if vim.b.__indent_blankline_active == false then
        return ' BL '
    else
        return ''
    end
end

function M.numy()
    if vim.o.number == true then
        return ' NM '
    else
        return ''
    end
end

function M.numn()
    if vim.o.number == false then
        return ' NM '
    else
        return ''
    end
end

function M.relnumy()
    if vim.o.relativenumber == true then
        return ' RN '
    else
        return ''
    end
end

function M.relnumn()
    if vim.o.relativenumber == false then
        return ' RN '
    else
        return ''
    end
end

function M.diagy()
    -- Bit of a hack but this is OK as all diags are either on or off for me at this time
    if vim.diagnostic.config().float == true then
        return ' DG '
    else
        return ''
    end
end

function M.diagn()
    if vim.diagnostic.config().float == false then
        return ' DG '
    else
        return ''
    end
end

function M.hlsy()
    if vim.o.hlsearch == true then
        return ' HL '
    else
        return ''
    end
end

function M.hlsn()
    if vim.o.hlsearch == false then
        return ' HL '
    else
        return ''
    end
end

return M
