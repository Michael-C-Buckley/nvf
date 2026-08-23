{
  vim = {
    lsp.trouble.enable = true; # Interactive menu for examining diagnostics

    luaConfigPost =
      # lua
      ''
        vim.diagnostic.config({
          virtual_text = {
            prefix = "●",
            source = "if_many",
            spacing = 2,
            virt_text_pos = "eol",
            virt_text_win_col = 89,
            format = function(diagnostic)
              return diagnostic.message:match("^[^\\n]+")
            end,
          },
          float = {
            border = "rounded",
            source = true,
          },
          severity_sort = true,
        })
      '';
  };
}
