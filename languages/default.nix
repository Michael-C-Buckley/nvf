{
  imports = [
    ./nix.nix
    ./python.nix
  ];

  vim = {
    languages = {
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      bash.enable = true;
      yaml.enable = true;
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
