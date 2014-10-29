let
  pkgs = import <nixpkgs> {};
  haskellPackages = pkgs.haskellPackages.override {
    extension = self: super: {
      bindingsLibusb = self.callPackage ./. {};
    };
  };

in pkgs.myEnvFun {
     name = haskellPackages.bindingsLibusb.name;
     buildInputs = [
       (haskellPackages.ghcWithPackages (hs: ([
         hs.cabalInstall
         hs.hscolour
       ] ++ hs.bindingsLibusb.propagatedNativeBuildInputs)))
     ];
   }