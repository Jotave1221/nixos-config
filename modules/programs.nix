  { pkgs, ... }:

  {

    environment.systemPackages = with pkgs; [

      wget
      btop
      kdePackages.dolphin
      kdePackages.ark
      kdePackages.discover
      kdePackages.konsole
      kdePackages.flatpak-kcm
      prismlauncher
      cavalier
      pulseaudio
      kdePackages.bluedevil
      kdePackages.bluez-qt
      mpv
      ffmpeg
      curl
      git
      gh
      genact
      hollywood
      foot
      vscode
      python3
    ];

    fonts.packages = with pkgs; [
    # Instala apenas a JetBrains Mono da coleção Nerd Fonts
      nerd-fonts.jetbrains-mono

    # Se quiser outras fontes populares, basta adicionar abaixo:
      nerd-fonts.fira-code
    # nerd-fonts.hack
    # nerd-fonts.meslo-lg
    ];

    nixpkgs.config.allowUnfree = true;

    programs.firefox.enable = true;

    services.flatpak.enable = true;

  }
