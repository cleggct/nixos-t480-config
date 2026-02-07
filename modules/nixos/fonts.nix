{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    ibm-plex  # For serif and sans
    nerd-fonts.blex-mono  # For mono nerd font variant
  ];

  fonts.fontconfig.defaultFonts = {
    serif = [ "IBM Plex Serif" ];
    sansSerif = [ "IBM Plex Sans" ];
    monospace = [ "BlexMono Nerd Font" ];  # The nerd font patched version
  };
}
