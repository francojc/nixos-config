{
	imports = [
		./autocommands.nix
		./keymaps.nix
		./options.nix
	];

	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		performance = {
			combinePlugins = {
				enable = true;
				standalonePlugins = [];
			};
			byteCompileLua.enable = true;
		};
		viAlias = true;
		luaLoader.enable = true;
	};

	programs.nixvim = {
		colorschemes.gruvbox = {
			enable = true;
      settings.contrast_dark = "hard";
		};

		plugins = {
      copilot-chat = {
        enable = true;
        settings = {
          model = "gpt-4o";
          temperature = 0.3;
          window.width = 0.25;
        };
      };

      copilot-vim.enable = true;

      mini = {
        enable = true;
        modules = {
          ai = {};
          indentscope = {};
          icons = {};
          files = {};
          notify = {};
          pairs = {};
          starter = {};
          statusline = {};
        };
      };

      nvim-colorizer = {
        enable = true;
        userDefaultOptions = {
          mode = "virtualtext";
          virtualtext = "■";
          names = false;
        };
      };

     treesitter = {
      enable = true;
      nixGrammars = true;
      languageRegister.markdown = "quarto";
      settings = {
        auto_install = true;
        indent.enable = true;
        highlight.enable = true;
        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = "<C-space>";
            node_incremental = "<C-space>";
            scope_incremental = false;
            node_decremental = "<bs>";
          };
        };
      };
      folding = true;
     };

     treesitter-context.enable = true;

     trouble.enable = true;

     web-devicons.enable = true;

     which-key = {
      enable = true;
     };

     yazi.enable = true;
		};
	};
}
