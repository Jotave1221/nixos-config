{ pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        # Defina a fonte e o tamanho desejado (ex: size=13 ou 14)
        font = "monospace:size=13";
        
        # Opcional: ajustar a opacidade do fundo (transparência)
        # alpha = 0.95;
      };

      # Opcional: Ajustar cantos/margem interna do terminal
      # pad = "8x8";
    };
  };
}
