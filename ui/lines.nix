let
  useMini = false;
in {
  vim = {
    mini = {
      statusline.enable = useMini;
      tabline.enable = useMini;
    };

    tabline.nvimBufferline = {
      enable = !useMini;
    };

    statusline.lualine = {
      enable = !useMini;
      integrations.breadcrumbs = {
        navbuddy.enable = true;
        nvim-navic.enable = true;
      };
    };
  };
}
