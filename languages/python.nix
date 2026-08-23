{
  vim = {
    languages.python = {
      enable = true;
      dap.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    ui.smartcolumn.setupOpts.custom_colorcolumn.python = [
      "80"
      "120"
    ];
  };
}
