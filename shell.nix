{
  pkgs ? import <nixpkgs> {},
  extraPkgs ? [],
}:
pkgs.mkShellNoCC {
  name = "default";
  buildInputs = [
    (import ./shellEnv.nix {inherit pkgs extraPkgs;})
  ];

  shellHook = ''
    if ! lefthook check-install >/dev/null 2>&1; then
      lefthook install
    fi
    git fetch
    git status --short --branch
  '';
}
