{
  vim = {
    languages.nix = {
      enable = true;
      extraDiagnostics = {
        enable = false;
        types = [
          "deadnix"
          "statix"
        ];
      };
      format = {
        enable = true;
        type = ["alejandra"];
      };
      lsp.servers = [
        "nil"
        "nixd"
      ];
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
  };
}
