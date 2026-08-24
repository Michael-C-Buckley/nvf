{pkgs, ...}: let
  npins = import ./npins;
  mkPlugin = pname: let
    src = npins.${pname};
  in
    pkgs.vimUtils.buildVimPlugin {
      inherit pname src;
      version =
        if src.type == "GitRelease"
        then src.version
        else src.revision;
    };
in {
  aquavium-nvim = mkPlugin "aquavium.nvim";
  oasis-nvim = mkPlugin "oasis.nvim";
}
