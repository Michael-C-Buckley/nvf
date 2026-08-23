{lib, ...}: {
  imports = [
    ./editing
    ./ui
  ];
  vim = {
    # Base Vim settings
    options = {
      # Basic
      matchtime = 2; # briefly jump to a matching bracket for 0.2s
      exrc = true; # use project specific vimrc
      # Inndent
      smartindent = true;
      softtabstop = 2;
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
      shiftround = true; # round indent to multiple of 'shiftwidth' for > and < command
      foldlevel = 99;
      foldlevelstart = 99;
      # Visual
      termguicolors = true;
      scrolloff = 10;
      sidescrolloff = 10;
      signcolumn = "yes";
      # Files
      autoread = true;
      autowrite = false;
      backup = false;
      writebackup = false;
      swapfile = false;
      undofile = true;
      undodir = "vim.fn.expand('~/.vim/undodir')";
      updatetime = 300;
      ttimeoutlen = 0;
      # Behavior
      backspace = "indent,eol,start";
      autochdir = false;
      mouse = "a";
    };

    lineNumberMode = "relNumber";
    preventJunkFiles = true;
    searchCase = "smart";
    # End Vim settings

    autopairs.nvim-autopairs.enable = true;

    notes.todo-comments.enable = true;

    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };

    utility = {
      outline.aerial-nvim.enable = true;
      mkdir.enable = true;
      nix-develop.enable = true;
      oil-nvim = {
        enable = true;
        gitStatus.enable = true;
      };
      motion.leap.enable = true;
    };

    git = {
      enable = true;
      git-conflict.enable = true;
      gitsigns.enable = true;
    };

    spellcheck = {
      enable = lib.mkForce false;
      vim-dirtytalk.enable = false; # for programming words
      ignoredFiletypes = [
        "toggleterm"
        "gitcommit"
      ];
    };

    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
    };
  };
}
