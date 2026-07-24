{
  description = "Configuração Flake com Home Manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # 1. Adiciona o Home Manager nos inputs
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Niri (se estiver usando)
    niri.url = "github:sodiboo/niri-flake";
  };

  outputs = { self, nixpkgs, home-manager, niri, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        
        # 2. IMPORTANTE: Esta linha ativa a opção 'home-manager' no NixOS!
        home-manager.nixosModules.home-manager
        
        # Módulo do Niri (se estiver usando)
        niri.nixosModules.niri
      ];
    };
  };
}
