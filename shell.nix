{
  pkgs ? import <nixpkgs> {},
  extraPkgs ? [],
}:
pkgs.mkShellNoCC {
  name = "default";
  buildInputs = with pkgs;
    [
      # Nix tools
      npins
      tack

      # Formatting
      mdformat
      alejandra
      treefmt

      # Hooks
      lefthook
      deadnix
      statix
      typos
      nil
    ]
    ++ extraPkgs;

  shellHook = ''
    if ! lefthook check-install >/dev/null 2>&1; then
      lefthook install
    fi
    git fetch
    git status --short --branch
  '';
}
