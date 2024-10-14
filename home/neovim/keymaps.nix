{
	programs.nixvim = {
		globals = {
			mapleader = " ";
			maplocalleader = " ";
		};

		keymaps = [
			{
				mode = "i";
				key = "jj";
				action = "<Esc>";
				options = { desc = "jj to esc"; silent = true; };
			}
      {
        mode = "i";
        key = "<C-d>";
        action = "<Plug>(copilot-accept-word)";
        options = { desc = "Copilot: accept next word"; };
      }
      {
        mode = "i";
        key = "<C-f>";
        action = "<Plug>(copilot-accept-line)";
        options = { desc = "Copilot: accept next line"; };
      }
      # Accept suggestion <TAB>

		];
	};
}
