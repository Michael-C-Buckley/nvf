{
  description = "NVF Flake";

  outputs = {self} @ args: let
    inputs = (import ./.tack) {overrides = args.tackOverrides or {};};
    forAllSystems = inputs.nixpkgs.lib.genAttrs [
      "x86_64-linux"
      "aarch64-linux"
      "aarch64-darwin"
    ];
    p = forAllSystems (system: import inputs.nixpkgs {inherit system;});
  in {
    packages = forAllSystems (system: let pkgs = p.${system}; in {
      default =
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./nvf.nix];
        }).neovim;
      nvf = pkgs.writeShellApplication {
        name = "nvf";
        text = ''
          exec "${pkgs.lib.getExe self.packages.${system}.default}" "@";
        '';
      };
    });
  };
}
