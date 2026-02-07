{ ... }:
{
  services.power-profiles-daemon.enable = true;
  services.thermald.enable = true; # disable if using tlp
  # services.tlp = {
  #   enable = true;
  #   settings = {
  #     PCIE_ASPM_ON_BAT = "powersupersave";
  #     RUNTIME_PM_DRIVER_DENYLISTi = "mei_me";
  #     RUNTIME_PM_ON_AC = "auto";
  #     SOUND_POWER_SAVE_ON_AC = true;
  #     SOUND_POWER_SAVE_ON_BAT = true;
  #     # CPU_SCALING_GOVERNOR_ON_AC = "performance";
  #     # CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
  #     # CPU_MAX_PERF_ON_AC = "100";
  #     # CPU_MAX_PERF_ON_BAT = "60";
  #     STOP_CHARGE_THRESH_BAT1 = "95";
  #     STOP_CHARGE_THRESH_BAT0 = "95";
  #   };
  # };
}
