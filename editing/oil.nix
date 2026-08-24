{
  vim = {
    utility.oil-nvim = {
      enable = true;
      gitStatus.enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "-";
        action = "<CMD>Oil<CR>";
        silent = true;
      }
    ];
  };
}
