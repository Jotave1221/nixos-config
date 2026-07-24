{ pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json";

      logo = {
        type = "kitty";
        source = "${./aperture-symbol-logo-clip-art-portal-thumbnail.jpg}";
        "color" = {
          "1" = "38;2;255;102;0"; 
          "2" = "38;2;0;162;255";  
        };
      };

      modules = [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "shell"
        "display"
        "de"
        "wm"
        "font"
        "terminal"
        "terminalfont"
        "cpu"
        "gpu"
        "memory"
        "swap"
        "disk"
        "battery"
        "break"
        "colors"
      ];
    };
  };
}
