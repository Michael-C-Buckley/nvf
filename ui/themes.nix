{ pkgs, ... }: {
  vim = {
    extraPlugins = {
      # Becomes the default theme
      ayu = {
        package = pkgs.vimPlugins.neovim-ayu;
        setup = ''
          require('ayu').setup{}
          vim.cmd.colorscheme("ayu")
        '';
      };
    };
    lazy.plugins = with pkgs.vimPlugins; {
      "kanso.nvim".package = kanso-nvim;
      "bamboo.nvim".package = bamboo-nvim;
      "kanagawa.nvim".package = kanagawa-nvim;
      "gruvbox.nvim".package = gruvbox-nvim;
      "tokyonight.nvim".package = tokyonight-nvim;
      "vague.nvim".package = vague-nvim;
      "edge".package = edge;
      "lackluster.nvim".package = lackluster-nvim;
      "zephyr-nvim".package = zephyr-nvim;
    };
  };
}
