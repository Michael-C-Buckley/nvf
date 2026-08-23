{
  imports = [
    ./nix.nix
  ];

  vim = {
    languages = {
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      bash.enable = true;
      yaml.enable = true;

      python = {
        enable = true;
        dap.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
    treesitter = {
      enable = true;
      context.enable = true;
      fold = true;
    };

    lsp = {
      enable = true;
      formatOnSave = false;
      lightbulb.enable = true;
      trouble.enable = true;
      otter-nvim.enable = true;
    };
  };
}
