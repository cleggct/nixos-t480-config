{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      # theme = "Catppuccin-Mocha";
      font_family = "BlexMono Nerd Font";
      font_size = 14;
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      window_padding_width = 10;
      # background_opacity = "0.8";
      # background_blur = 5;
    };
  };
}
