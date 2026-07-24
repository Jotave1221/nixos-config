{ config, pkgs, ... }:

{
  home.username = "jotave";
  home.homeDirectory = "/home/jotave";
  home.stateVersion = "26.05";

  imports = [
    ./modules/home-config # Importa automaticamente a pasta e seu default.nix
  ];

  # Pacotes extras que não exigem configuração avançada via Home Manager
  home.packages = with pkgs; [
    lavat
    peaclock
    pipes
    cmatrix
    cava
    figlet
  ];

  home.sessionVariables = {
    NCURSES_NO_UTF8_ACS = "1";
    LANG = "pt_BR.UTF-8";
    LC_ALL = "pt_BR.UTF-8";
  };

  # Permite que o Home Manager gerencie a si mesmo
  programs.home-manager.enable = true;

}
