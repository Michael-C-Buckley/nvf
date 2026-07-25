{lib, ...}: {
  imports = [
    ./editing
    ./ui
  ];
  vim = {
    # Base Vim settings
    options = {
      matchtime = 2; # briefly jump to a matching bracket for 0.2s
      exrc = true; # use project specific vimrc
      smartindent = true;
      softtabstop = 4;
      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      shiftround = true; # round indent to multiple of 'shiftwidth' for > and < command
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
      oil-nvim.enable = true;
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
      ignoredFiletypes = ["toggleterm" "gitcommit"];
    };

    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
    };
  };
}
