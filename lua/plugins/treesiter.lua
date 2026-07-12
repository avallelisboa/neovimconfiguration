return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        -- Automatically turn on treesitter highlighting and indents when entering a file
        vim.api.nvim_create_autocmd('FileType', {
            callback = function()
                pcall(vim.treesitter.start)
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })

        -- Handle your language parser installations manually
        local ensure_installed = {
            "c", "cpp", "rust", "lua", "tsx", 
            "typescript", "php", "python", "javascript"
        }
        
        -- Pull down any missing language parsers
        local installed = require('nvim-treesitter.config').get_installed()
        local to_install = vim.iter(ensure_installed):filter(function(p)
            return not vim.tbl_contains(installed, p)
        end):totable()

        if #to_install > 0 then
            require('nvim-treesitter').install(to_install)
        end
    end
}
