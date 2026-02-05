{ pkgs, inputs, ... }:

{
  home.stateVersion = "25.11";

  imports = [
    inputs.noctalia.homeModules.default
  ];

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
    #   theme = "catppuccin_mocha_transparent";
      editor.true-color = true;
      editor.line-number = "relative";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
    # themes = {
    #   catppuccin_mocha_transparent = {
    #     "inherits" = "catppuccin_mocha";
    #     "ui.background" = { };
    #   };
    # };
  };

  programs.kitty = {
    enable = true;
    settings = {
      theme = "Catppuccin-Mocha";
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      window_padding_width = 10;
      # background_opacity = "0.8";
      # background_blur = 5;
    };
  };

  # configure options
  programs.noctalia-shell = {
    enable = true;
    settings = {
      # configure noctalia here
      bar = {
        density = "compact";
        position = "right";
        showCapsule = false;
        widgets = {
          left = [
            {
              id = "ControlCenter";
              useDistroLogo = true;
            }
            {
              id = "Network";
            }
            {
              id = "Bluetooth";
            }
          ];
          center = [
            {
              hideUnoccupied = false;
              id = "Workspace";
              labelMode = "none";
            }
          ];
          right = [
            {
              alwaysShowPercentage = false;
              id = "Battery";
              warningThreshold = 30;
            }
            {
              formatHorizontal = "HH:mm";
              formatVertical = "HH mm";
              id = "Clock";
              useMonospacedFont = true;
              usePrimaryColor = true;
            }
          ];
        };
      };
      colorSchemes.predefinedScheme = "Catppuccin Lavender";
      general = {
        avatarImage = "/home/cc/Pictures/flower_purple.jpg";
        radiusRatio = 0.2;
      };
      location = {
        monthBeforeDay = true;
        name = "Oulu, Finland";
      };
    };
    # this may also be a string or a path to a JSON file.
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
