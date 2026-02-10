{ pkgs, inputs, ... }:

{
  home.stateVersion = "25.11";

  imports = [
    inputs.catppuccin.homeModules.catppuccin
    inputs.noctalia.homeModules.default
    ./modules/nixos/catppuccin.nix
    ./modules/home-manager/git.nix
    ./modules/home-manager/helix.nix
    ./modules/home-manager/kitty.nix
    ./modules/home-manager/niri.nix
    ./modules/home-manager/noctalia.nix
  ];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
  };

  home.packages = with pkgs; [
    htop
    bat
    ripgrep
    mesa-demos
    gh
    wl-clipboard
    fastfetch
    fuzzel
    nvtopPackages.full
  ];
}
