{
  pkgs,
  lib,
  ...
}: let
  mkFzfBind = keys: action: {
    mode = "n";
    key = "<leader>${keys}";
    action = ":FzfLua ${action}<CR>";
  };
  excludes =
    "--exclude "
    + (builtins.concatStringsSep " --exclude " [
      ".git"
      ".jj"
      ".direnv"
      ".arc"
    ]);
in {
  vim = {
    fzf-lua = {
      enable = true;
      setupOpts.files = {
        cmd = "${lib.getExe pkgs.fd} --type f --hidden --follow ${excludes}";
      };
    };

    keymaps = [
      (mkFzfBind "f" "files")
      (mkFzfBind "/" "live_grep")
      (mkFzfBind ";" "resume")
      (mkFzfBind "cs" "colorschemes")
      (mkFzfBind "gs" "git_status")
      (mkFzfBind "gd" "git_diff")
      (mkFzfBind "gb" "git_branches")
      (mkFzfBind "u" "undo")
    ];
  };
}
