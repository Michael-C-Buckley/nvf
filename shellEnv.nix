{
  pkgs ? import <nixpkgs> { },
  extraPkgs ? [ ],
}:
pkgs.buildEnv {
  name = "nvf-shell-tools";
  pathsToLink = [ "/bin" ];
  paths =
    with pkgs;
    [
      npins
      tack
      mdformat
      nixfmt
      treefmt
      lefthook
      deadnix
      statix
      typos
      nil
    ]
    ++ extraPkgs;
}
