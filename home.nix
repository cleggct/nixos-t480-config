{ pkgs, ... }:

{
  home.stateVersion = "25.11";

  programs.git = {
    enable = true;
    settings = {
      user.name = "Christa Clegg";
      user.email = "cleggct@gmail.com";
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };

  home.packages = with pkgs; [
    htop
    bat
    ripgrep
    mesa-demos
    gh
    helix
  ];
}
