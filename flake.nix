{
  description = "NixOS kexec tool";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

   outputs = inputs: {
    overlays = import ./overlays inputs;
    packages = import ./packages.nix inputs;
    legacyPackages = import ./legacy-packages.nix inputs;
  };
}
