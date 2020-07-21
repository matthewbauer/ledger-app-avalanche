let
  ledger-app-nervos = import ./. {};
in {
  analysis-nanos = ledger-app-nervos.clangAnalysis.s.wallet;
  release-nanos = ledger-app-nervos.nano.s.release.all;
  debug-build = (import ./. {debug=true;}).nano.s.release.all;
  ckb-cli = import ./nix/dep/ckb-cli {};
  ckb = import ./nix/dep/ckb {};
  usbtool = import ./nix/dep/usbtool.nix {};
}
