  { pkgs, ... }:

  {
    programs.bash = {
      enable = true;
      shellAliases = {
        rebuild = "cd /etc/nixos && sudo git add . && sudo nixos-rebuild switch --flake . && (git diff-index --quiet HEAD || (git commit -m \"chore: rebuild e atualização do sistema\" && git push))";
        config = "sudo nano /etc/nixos/configuration.nix";
      };
      initExtra = "fastfetch";
    };
  }
