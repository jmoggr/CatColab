{
  pkgs,
  ...
}:
let
  cargoNix = pkgs.callPackage ../../Cargo.nix { };
  # .build is the derivation, not that it's documented anywhere...
  backend = cargoNix.workspaceMembers.catcolab-backend.build;
in
backend.overrideAttrs (attrs: {
  postInstall = ''
    cp -r migrations $out/
  '';
})
