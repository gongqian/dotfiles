return {
  {
    "akinsho/toggleterm.nvim",
    keys = {
      { "<leader>>", "<Cmd>ToggleTerm direction=horizontal<CR>", desc = "Toggle Term" },
    },
    config = function()
      require("toggleterm").setup({
        size = 20,
      })

      -- https://github.com/akinsho/toggleterm.nvim#terminal-window-mappings
      function _G.set_terminal_keymaps()
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        vim.keymap.set({ "t", "n" }, "<esc><esc>", [[<Cmd>ToggleTerm<CR>]], opts)
      end

      vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
    end,
  },
}
