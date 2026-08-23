{
  imports = [
    ./fzflua.nix
    ./neotree.nix
    ./themes.nix
    ./transparent.nix
  ];

  vim = {
    # No dashboard and suppress the default splash screen
    luaConfigRC.options = ''
      vim.opt.shortmess:append("I")
    '';

    comments.comment-nvim.enable = true;
    statusline.lualine = {
      enable = true;
      integrations.breadcrumbs = {
        navbuddy.enable = true;
        nvim-navic.enable = true;
      };
    };
    tabline.nvimBufferline.enable = true;

    # Navigation
    projects.project-nvim.enable = true;
    navigation.harpoon.enable = true;

    ui = {
      borders.enable = true;
      illuminate.enable = true;
      fastaction.enable = true;
      noice.enable = true;
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
      nvim-cursorline.enable = true;

      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;
      highlight-undo.enable = true;
      indent-blankline.enable = true;
      rainbow-delimiters.enable = true;
    };
  };
}
