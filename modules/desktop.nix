{ pkgs, ... }:

{
  # Servidor gráfico / Wayland / Audio
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Áudio com Pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  services.blueman.enable = true;
}
