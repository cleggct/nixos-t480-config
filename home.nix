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
      theme = "catppuccin_mocha_transparent";
      editor.true-color = true;
      editor.line-number = "relative";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
    themes = {
      catppuccin_mocha_transparent = {
        "inherits" = "catppuccin_mocha";
        "ui.background" = { };
      };
    };
  };

  programs.kitty = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      window_padding_width = 10;
      background_opacity = "0.8";
      background_blur = 5;
    };
  };
  
  home.packages = with pkgs; [
    htop
    bat
    ripgrep
    mesa-demos
    gh
    wl-clipboard
    fastfetch
  ];
}
