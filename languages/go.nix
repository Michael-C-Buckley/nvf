{
  vim = {
    languages.go = {
      enable = true;
      dap.enable = true;
      lsp.enable = true;
      treesitter.enable = true;
    };
    ui.smartcolumn.setupOpts.custom_colorcolumn.go = ["120"];
  };
}
