{ pkgs, ... }:

{
  # Configuração do Git via Home Manager
  programs.git = {
    enable = true;
    userName  = "Jotave1221"; # Seu nome no GitHub
    userEmail = "Joaovitorkrugerdias@gmail.com"; # O mesmo e-mail associado ao GitHub

    # Garante que o Git prefira SSH para URLs do GitHub
    extraConfig = {
      init.defaultBranch = "main"; # ou "master"
      url."git@github.com:".insteadOf = "https://github.com/";
    };
  };

  # Habilita e gerencia a chave SSH
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
  };
}
