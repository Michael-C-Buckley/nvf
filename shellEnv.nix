{
  pkgs ? import <nixpkgs> {},
  extraPkgs ? [],
}:
pkgs.buildEnv {
  name = "nvf-shell-tools";
  pathsToLink = ["/bin"];
  paths = with pkgs;
    [
      npins
      tack
      mdformat
      alejandra
      treefmt
      lefthook
      deadnix
      statix
      typos
      nil
    ]
    ++ extraPkgs;
}
