{
  vim = {
    languages.nix = {
      enable = true;
      extraDiagnostics = {
        enable = true;
        types = ["statix"];
      };
      format = {
        enable = true;
        type = ["alejandra"];
      };
      lsp.servers = ["nil"];
    };
    lsp.servers = {
      nil = {
        settings.nil = {
          nix.flake = {
            autoArchive = true;
            nixpkgsInputName = "nixpkgs";
            maxMemoryMB = 4096;
          };
        };
      };
    };

    ui.smartcolumn.setupOpts.custom_colorcolumn.nix = [
      "110"
    ];
  };
}
