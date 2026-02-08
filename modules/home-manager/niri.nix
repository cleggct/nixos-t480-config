{ pkgs, config, ... }:

let
  noctalia = cmd: [
    "noctalia-shell" "ipc" "call"
  ] ++ (pkgs.lib.splitString " " cmd);
in
{
  programs.niri = {
    package = pkgs.niri-unstable;
    settings = {
      binds = with config.lib.niri.actions; {
        # Launch applications
        "Mod+Return".action.spawn = [ "kitty" ];
        "Mod+D".action.spawn = noctalia "launcher toggle";
        
        # Window management
        "Mod+Q".action.close-window = [];
        "Mod+F".action.fullscreen-window = [];
        
        # Focus windows (vim keys)
        "Mod+H".action.focus-column-left = [];
        "Mod+L".action.focus-column-right = [];
        "Mod+J".action.focus-window-down = [];
        "Mod+K".action.focus-window-up = [];
        
        # Move windows (vim keys)
        "Mod+Shift+H".action.move-column-left = [];
        "Mod+Shift+L".action.move-column-right = [];
        "Mod+Shift+J".action.move-window-down = [];
        "Mod+Shift+K".action.move-window-up = [];
        
        # Resize windows
        "Mod+Ctrl+H".action.set-column-width = "-10%";
        "Mod+Ctrl+L".action.set-column-width = "+10%";
        "Mod+Ctrl+J".action.set-window-height = "-10%";
        "Mod+Ctrl+K".action.set-window-height = "+10%";
        
        # Workspaces
        "Mod+1".action.focus-workspace = 1;
        "Mod+2".action.focus-workspace = 2;
        "Mod+3".action.focus-workspace = 3;
        "Mod+4".action.focus-workspace = 4;
        "Mod+5".action.focus-workspace = 5;
        
        # Move to workspace
        "Mod+Shift+1".action.move-column-to-workspace = 1;
        "Mod+Shift+2".action.move-column-to-workspace = 2;
        "Mod+Shift+3".action.move-column-to-workspace = 3;
        "Mod+Shift+4".action.move-column-to-workspace = 4;
        "Mod+Shift+5".action.move-column-to-workspace = 5;
        
        # Scroll through workspaces
        "Mod+Left".action.focus-workspace-down = [];
        "Mod+Right".action.focus-workspace-up = [];
        "Mod+Shift+Left".action.move-column-to-workspace-down = [];
        "Mod+Shift+Right".action.move-column-to-workspace-up = [];
        
        # Screenshots
        "Print".action.screenshot = [];
        "Shift+Print".action.screenshot-screen = [];
        "Ctrl+Print".action.screenshot-window = [];

        # System controls (Noctalia integration)
        "Mod+Escape".action.spawn = noctalia "lockScreen lock";
        "XF86AudioLowerVolume".action.spawn = noctalia "volume decrease";
        "XF86AudioRaiseVolume".action.spawn = noctalia "volume increase";
        "XF86AudioMute".action.spawn = noctalia "volume muteOutput";
        "XF86MonBrightnessDown".action.spawn = noctalia "brightness decrease";
        "XF86MonBrightnessUp".action.spawn = noctalia "brightness increase";
        
        # Exit niri
        "Mod+Shift+E".action.quit = [];
      };
      spawn-at-startup = [
        {
          command = [
            "noctalia-shell"
          ];
        }
      ];
      environment = {
        "NIXOS_OZONE_WL" = "1";  # For electron apps
      };
    };
  };
}
