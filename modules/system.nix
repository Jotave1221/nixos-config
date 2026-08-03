{ pkgs, ... }:

{
  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true; # Liga o Bluetooth ao iniciar o sistema
    settings = {
      General = {
        Experimental = true; # Habilita recursos experimentais (como melhor suporte a fones)
      };
    };
  };

  i18n.defaultLocale = "pt_BR.UTF-8"; # ou "en_US.UTF-8"

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
    timeout = null;
    useOSProber = true;
  };
  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
}
