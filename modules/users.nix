{ pkgs, ... }:

{
  users.users.jotave = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Habilita 'sudo' para o usuário
    packages = with pkgs; [
      tree
    ];
  };
}
