 let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
 in

 pkgs.mkShell {
   packages = with pkgs; [
     git
     neovim
     feroxbuster
   ];

   GIT_EDITOR = "${pkgs.neovim}/bin/nvim";
   EDITOR = "${pkgs.neovim}/bin/nvim";

   shellHook = ''
       alias gs='git status'
   '';
 }
