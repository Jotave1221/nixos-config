{ pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json";

      logo = {
        type = "kitty";
        source = "${./43-438266_aperture-science-logo-png.png}";  
        # Ajuste o tamanho da imagem (em colunas de texto)
        width = 30; 
        height = 15;

        # Padding para afastar o texto da imagem
        padding = {
          right = 2;
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
