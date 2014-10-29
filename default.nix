{ cabal, bindingsDSL, libusb1 }:

cabal.mkDerivation (self: {
  pname = "bindings-libusb";
  version = "1.4.5.0";
  src = ./.;
  buildDepends = [ bindingsDSL ];
  pkgconfigDepends = [ libusb1 ];
  meta = {
    homepage = "https://github.com/basvandijk/bindings-libusb";
    description = "Low level bindings to libusb";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
