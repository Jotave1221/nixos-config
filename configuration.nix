{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

 home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.jotave = import ./home.nix;
  };

  system.stateVersion = "24.05";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
