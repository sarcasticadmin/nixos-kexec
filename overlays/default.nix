inputs: {
  default = inputs.nixpkgs.lib.composeManyExtensions [
    (
      final: prev:
      prev.lib.packagesFromDirectoryRecursive {
        inherit (final) callPackage;
        directory = ./by-name;
      }
    )
  ];
}
