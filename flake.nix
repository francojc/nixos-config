{
  description = "My NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = inputs@{ self, nixpkgs, home-manager, nixvim, ... }:

    let
      username = "jeridf";
      useremail = "francojc@wfu.edu";
      system = "aarch64-linux";
      hostname = "nixos";

      specialArgs =
        inputs
        // {
          inherit username useremail hostname;
        };
    in

  {
    nixosConfigurations."${hostname}" = nixpkgs.lib.nixosSystem {
	specialArgs = { inherit inputs; };
        modules = [
	  			./system/configuration.nix
					home-manager.nixosModules.home-manager {
									home-manager.extraSpecialArgs = specialArgs;
									home-manager.useGlobalPkgs = true;
									home-manager.useUserPackages = true;
									home-manager.verbose = true;
									home-manager.users.${username} = {
										imports = [
											./home
											nixvim.homeManagerModules.nixvim
										];
									};
					}
			];
    };

    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;

  };
}
