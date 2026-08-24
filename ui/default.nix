{
  imports = [
    ./fzflua.nix
    ./neotree.nix
    ./themes.nix
    ./transparent.nix
    ./lines.nix
  ];

  vim = {
    # No dashboard and suppress the default splash screen
    luaConfigRC.options = ''
      vim.opt.shortmess:append("I")
    '';

    comments.comment-nvim.enable = true;

    # Navigation
    projects.project-nvim.enable = true;
    navigation.harpoon.enable = true;

    ui = {
      borders.enable = true;
      illuminate.enable = true;
      fastaction.enable = true;
      noice.enable = true; # Replaces a bunch of stock UI with nicers ones
      smartcolumn.enable = true;

      colorizer = {
        enable = true;
        setupOpts.filetypes = {
          "*" = {
            mode = "background";
            tailwind = true;
            names = true;
            RGB = true;
            RRGGBB = true;
          };
        };
      };
    };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true; # Underline word under cursor
      cinnamon-nvim.enable = true; # Smooth scrolling
      fidget-nvim.enable = true; # LSP loading info
      highlight-undo.enable = true;
      indent-blankline.enable = true;
      rainbow-delimiters.enable = true;
    };
  };
}
