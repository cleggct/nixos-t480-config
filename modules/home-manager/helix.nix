{ pkgs, ... }:
{
  # Disable stylix styling for helix so we can use the built in style
  # stylix.targets.helix.enable = false;
  
  programs.helix = {
    enable = true;
    settings = {
      # theme = "catppuccin-mocha";
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
}
