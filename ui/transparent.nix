{pkgs, ...}: {
  vim = {
    # Suppresses starting it automatically on nvim launch
    extraPlugins.transparent-nvim = {
      package = pkgs.vimPlugins.transparent-nvim;
      setup =
        # lua
        ''
          require("transparent")
        '';
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>tt";
        action = ":TransparentToggle<CR>";
      }
    ];
  };
}
