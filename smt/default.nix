let
  pkgs = import ../pkgs.nix;
in import "${pkgs.ihaskell}/release.nix" {
  compiler = "ghc8107";
  nixpkgs  = import pkgs.nixpkgs {};
  packages = self: with self; [ sbv ];
  systemPackages = self: with self; [ z3 ];
}
