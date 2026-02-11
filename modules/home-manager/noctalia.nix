{ pkgs, ... }:
{
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
      ui = {
        fontDefault = "IBM Plex Sans";
        fontFixed = "BlexMono Nerd Font";
        boxBorderEnabled = false;
      };
      defaultWallpaper = "/home/cc/Pictures/flower_purple_ss.jpg";
      # wallpaper = {
      #   enabled = true;
      #   overviewEnabled = true;
      #   directory = "/home/cc/Pictures/flower_purple_ss.jpg";
      #   viewMode = "single";
      #   fillMode = "crop";
      # };
      appLauncher = {
        terminalCommand = "kitty";
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
 }
