{
  description = "complete nixos config";

  inputs = {
    # Repositório principal de pacotes do Nix
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Módulo do Niri
    niri.url = "github:sodiboo/niri-flake";
  };

  outputs = { self, nixpkgs, home-manager, niri, ... }@inputs:
    let
      system = "x86_64-linux"; # Altere se usar outra arquitetura
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      # 1. Configuração do NixOS
      nixosConfigurations = {

        nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./configuration.nix
            niri.nixosModules.niri # Ativa o módulo do Niri no sistema
          ];
        };
      };

      # 2. Configuração do Home Manager
      homeConfigurations = {
        "jotave" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [
            ./home.nix
            niri.homeModules.niri # Suporte do Niri no Home Manager
          ];
        };
      };
    };
}
