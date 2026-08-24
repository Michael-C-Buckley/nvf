{
  description = "NVF Flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixos-unstable/nixexprs.tar.xz";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
  }: let
    forAllSystems = nixpkgs.lib.genAttrs [
      "x86_64-linux"
      "aarch64-linux"
      "aarch64-darwin"
    ];
    p = forAllSystems (system: import nixpkgs {inherit system;});

    mkNvf = pkgs:
      nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = [./nvf.nix];
      };
  in {
    # For Config Sampling
    config = mkNvf p.x86_64-linux;
    packages = forAllSystems (system: let
      pkgs = p.${system};
    in {
      default = (mkNvf pkgs).neovim;
      nvf = pkgs.writeShellApplication {
        name = "nvf";
        text = ''
          exec "${pkgs.lib.getExe self.packages.${system}.default}" "$@";
        '';
      };
      # A buildEnv of shell tools (unlike shell.nix, this populates result/bin), for CI
      shell = import ./shellEnv.nix {inherit pkgs;};
    });
  };
}
