{ pkgs, perSystem, ... }:
pkgs.mkShell {
  packages = with pkgs; [
    git
    go
  ];

  PROJECT_NAME = "@0xc/dddd";

  shellHook = ''
    echo $ Started devshell for $PROJECT_NAME
    echo
  '';
}
