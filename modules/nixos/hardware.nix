{ ... }:
{
  boot.initrd.kernelModules = [ "i915" ];
  boot.kernelParams = [ "psmouse.synaptics_intertouch=0" ];
}
