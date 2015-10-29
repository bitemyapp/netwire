{ pkgs ? import <nixpkgs> { } }:
let hsPkgs = pkgs.haskellPackages.override {
        extension = self: super: {
            thisDevPkg = self.callPackage ./. {};
        };
    };

in hsPkgs.thisDevPkg
