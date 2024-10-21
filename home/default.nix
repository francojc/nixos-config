{ config, pkgs, ... }:

{
  home.username = "jeridf";
  home.homeDirectory = "/home/jeridf";
  home.packages = with pkgs; [
    albert
    eza
    direnv
    fd
    fzf
    gh
    google-drive-ocamlfuse
    jq
    kitty
    lazydocker
    lazygit
    llm
    lynx
    neofetch
    nix-direnv
    nix-prefetch-git
    pandoc
    pianobar
    quarto
    ripgrep
    tldr
    yazi
    yt-dlp
    zoom-us
  ];

	imports = [
		./neovim
	];

  programs.atuin = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      enter_accept = false;
    };
  };

  programs.direnv = {
		enable = true;
		enableZshIntegration = true;
		nix-direnv.enable = true;
	};

	programs.fzf = {
		enable = true;
		enableZshIntegration = true;
	};

  programs.git = {
    enable = true;
    userName = "Jerid Francom";
    userEmail = "francojc@wfu.edu";
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    defaultKeymap = "viins";
		plugins = [];
		shellAliases = {
			ls = "eza --icons=auto --almost-all --dereference --no-quotes";
			la = "eza --icons=auto --almost-all --long --smart-group --ignore-glob='.git'";
			lt = "eza --icons=auto --tree --level=2 --ignore-glob='.git'";
			cd = "z";
			cp = "cp -iv";
			mv = "mv -iv";
			switch = "sudo nixos-rebuild switch --flake ~/.config/nixos#";
		};
  };

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
