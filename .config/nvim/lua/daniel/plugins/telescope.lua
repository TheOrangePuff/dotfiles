return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup()
        -- require("telescope").setup({
        --     extensions = {
        --         fzf = {
        --             fuzzy = true,                    -- false will only do exact matching
        --             override_generic_sorter = true,  -- override the generic sorter
        --             override_file_sorter = true,     -- override the file sorter
        --             case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        --             -- the default case_mode is "smart_case"
        --         }
        --     }
        -- }).load_extension('fzf')

        local keymap = vim.keymap

        keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy grep files" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find open buffer" })
        keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help articles" })
    end,
}
