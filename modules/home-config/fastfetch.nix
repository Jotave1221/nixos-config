{ pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json";

      logo = {
        type = "kitty";
        source = "${./NixOS.png}";
        width = 40;
        height = 20;
        padding = {
          top = 1;
          left = 2;
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
