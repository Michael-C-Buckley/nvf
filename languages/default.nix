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
      lightbulb.enable = true; # Shows a lightbulb when code actions are available
      trouble.enable = true; # Interactive menu for examining diagnostics
      otter-nvim.enable = true; # Runs proper LSP inside codeblocks
    };
  };
}
