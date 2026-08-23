{
  vim.keymaps = [
    {
      mode = "n";
      key = "f<leader>";
      action = ":lua vim.lsp.buf.format()<CR>";
      silent = true;
    }
    {
      mode = "n";
      key = "<leader>d";
      action = ":lua vim.diagnostic.open_float()<CR>";
      silent = true;
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      silent = true;
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<CR>";
      silent = true;
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<CR>";
      silent = true;
    }
    {
      mode = "n";
      key = "<leader>xQ";
      action = "<cmd>Trouble qflist toggle<CR>";
      silent = true;
    }
  ];
}
