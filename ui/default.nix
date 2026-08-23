{
  imports = [
    ./alpha.nix
    ./fzflua.nix
    ./neotree.nix
    ./themes.nix
    ./transparent.nix
  ];

  vim = {
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

    luaConfigPost = ''
      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          source = "if_many",
          spacing = 2,
          virt_text_pos = "eol",
          virt_text_win_col = 89,
          format = function(diagnostic)
            return diagnostic.message:match("^[^\\n]+")
          end,
        },
        float = {
          border = "rounded",
          source = true,
        },
        severity_sort = true,
      })
    '';

    ui = {
      borders.enable = true;
      illuminate.enable = true;
      fastaction.enable = true;
      smartcolumn = {
        enable = true;
        setupOpts.custom_colorcolumn = {
          nix = "110";
          go = [
            "90"
            "130"
          ];
          python = [
            "80"
            "120"
          ];
        };
      };

      # Neat but distracting so I've disabled it
      colorizer = {
        enable = false;
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

      noice.enable = true;
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
