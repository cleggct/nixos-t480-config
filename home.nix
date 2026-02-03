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

  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      editor.true-color = true;
      editor.line-number = "relative";
    };
  };
  
  home.packages = with pkgs; [
    htop
    bat
    ripgrep
    mesa-demos
    gh
    wl-clipboard
  ];
}
