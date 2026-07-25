{
  vim = {

    languages = {
      enableFormat = false;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      bash.enable = true;
      yaml.enable = true;

      python = {
        enable = true;
        dap.enable = true;
        format.enable = false;
        lsp = {
          enable = true;
        };
        treesitter.enable = true;
      };

      nix = {
        enable = true;
        extraDiagnostics = {
          enable = true;
          types = ["deadnix" "statix"];
        };
        format = {
          enable = true;
          type = ["alejandra"];
        };
        lsp.servers = ["nil" "nixd"];
      };
    };
    treesitter = {
      enable = true;
      context.enable = true;
      fold = true;
    };

    lsp = {
      enable = true;
      formatOnSave = true;
      lightbulb.enable = true;
      trouble.enable = true;
      otter-nvim.enable = true;
      # harper-ls.enable = false;
    };

    keymaps = [
      {
        mode = "n";
        key = "f<leader>";
        action = ":lua vim.lsp.buf.format()<CR>";
        silent = true;
      }
    ];
  };
}
