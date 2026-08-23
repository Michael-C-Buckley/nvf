{pkgs, ...}: let
  npins = import ./npins;
in {
  aquavium-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "aquavium.nvim";
    version = npins."aquavium.nvim".revision;
    src = npins."aquavium.nvim";
  };

  codeschool-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "codeschool.nvim";
    version = npins."codeschool.nvim".revision;
    src = npins."codeschool.nvim";
  };

  oasis-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "oasis.nvim";
    inherit (npins."oasis.nvim") version;
    src = npins."oasis.nvim";
  };

  witch = pkgs.vimUtils.buildVimPlugin {
    pname = "witch";
    version = npins.witch.revision;
    src = npins.witch;
  };

  zephyrium = pkgs.vimUtils.buildVimPlugin {
    pname = "zephyrium";
    version = npins.zephyrium.revision;
    src = npins.zephyrium;
  };
}
