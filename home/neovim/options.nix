{
	programs.nixvim = {
		globals = { };
		opts = {
			number = true;
			relativenumber = true;

			tabstop = 2;
			expandtab = true;
			softtabstop = 2;

			showtabline = 1;

			smartindent = true;
			shiftwidth = 2;

			wrap = true;
			breakindent = true;
			linebreak = true;
			showbreak = "↳";

			splitbelow = true;
			splitright = true;

			hlsearch = true;
			incsearch = true;

			signcolumn = "yes";

			scrolloff = 5;
			sidescrolloff = 5;

			encoding = "utf-8";
			fileencoding = "utf-8";

			cmdheight = 1;

			showmode = true;

			clipboard = "unnamedplus";

      foldcolumn = "0";
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;

      swapfile = false;
      backup = false;
      writebackup = false;
      undofile = true;

      termguicolors = true;

		};
	};
}
