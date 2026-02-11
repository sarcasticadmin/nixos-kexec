inputs:
let

    inherit (inputs.nixpkgs.lib.attrsets)
      mapAttrs
      ;

    inherit (inputs.nixpkgs.lib.trivial)
      const
      ;

  in
  mapAttrs (const (pkgs: {
    inherit (pkgs)
      nixos-kexec
      ;
})) inputs.self.legacyPackages
