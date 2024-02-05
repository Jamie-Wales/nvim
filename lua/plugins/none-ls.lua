return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua, null_ls.builtins.diagnostics.cpplint,
                null_ls.builtins.diagnostics.golangci_lint,
                null_ls.builtins.formatting.cmake_format,
                null_ls.builtins.formatting.trim_whitespace,
                null_ls.builtins.hover.dictionary,
                null_ls.builtins.code_actions.proselint,
                null_ls.builtins.diagnostics.textidote,
                null_ls.builtins.formatting.textlint,
                null_ls.builtins.diagnostics.write_good,
                null_ls.builtins.completion.spell,
                null_ls.builtins.completion.tags,
                null_ls.builtins.diagnostics.proselint
            },
        })
        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
    end,
}
