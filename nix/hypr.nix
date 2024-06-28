{ pkgs, ... }:

{
 programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.xserver.displayManager.lightdm.enable = false;

  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    hyprpaper
    hyprpicker
    hyprlock
    hypridle
    waybar
    wofi
  ];
}
