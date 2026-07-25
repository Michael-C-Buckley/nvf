{
  description = "NVF Flake";

  outputs = {self} @ args: let
    inputs = (import ./.tack) {overrides = args.tackOverrides or {};};
    forAllSystems = inputs.nixpkgs.lib.genAttrs ["x86_64-linux" "aarch64-linux" "aarch64-darwin"];
    p = forAllSystems (system: import inputs.nixpkgs {inherit system;});
  in {
    packages = forAllSystems (system: {
      default = (inputs.nvf.lib.neovimConfiguration {
        pkgs = p.${system};
        modules = [./nvf.nix];
      }).neovim;
      nvf = self.packages.${system}.default;
    });
  };
}
