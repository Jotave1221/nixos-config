  { pkgs, ... }:

  {
    programs.bash = {
      enable = true;
      shellAliases = {
        update = "sudo nixos-rebuild switch";
        config = "sudo nano /etc/nixos/configuration.nix";
      };
      initExtra = "fastfetch";
    };
  }
