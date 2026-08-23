{pkgs, ...}: let
  localPlugins = import ../vimPlugins.nix {inherit pkgs;};
in {
  vim = {
    extraPlugins = {
      # Becomes the default theme
      oasis = {
        package = localPlugins.oasis-nvim;
        setup =
          # lua
          ''
            require("oasis").setup{}
            vim.cmd.colorscheme("oasis-moonlight")
          '';
      };
    };
    lazy.plugins =
      (with pkgs.vimPlugins; {
        "neovim-ayu".package = neovim-ayu;
        "kanso.nvim".package = kanso-nvim;
        "kanagawa.nvim".package = kanagawa-nvim;
        "gruvbox.nvim".package = gruvbox-nvim;
        "vague.nvim".package = vague-nvim;
        "edge".package = edge;
        "lackluster.nvim".package = lackluster-nvim;
      })
      // (with localPlugins; {
        "aquavium.nvim".package = aquavium-nvim;
      });
  };
}
