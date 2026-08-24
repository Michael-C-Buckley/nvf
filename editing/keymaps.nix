let
  allModes = [
    "n"
    "i"
    "v"
    "c"
    "t"
    "o"
    "x"
    "s"
  ];
  mkBind = mode: key: action: {
    inherit mode key action;
    silent = true;
  };
  mkNBind = key: action: mkBind "n" key action;
  mkVBind = key: action: mkBind "v" key action;
  mkAllBind = key: action: mkBind allModes key action;
in {
  vim.keymaps = [
    # Buffer Navigation
    (mkNBind "<M-w>" ":bdelete<CR>")
    (mkNBind "<M-,>" ":bprevious<CR>")
    (mkNBind "<M-.>" ":bnext<CR>")
    # Save/Quit
    (mkAllBind "<C-S>" "<cmd>write<cr>")
    # Remove F1 for help
    (mkAllBind "<F1>" "<Nop>")
    # Move lines
    (mkVBind "J" ":m '>+1<cr>gv=gv")
    (mkVBind "K" ":m '<-2<cr>gv=gv")
  ];
}
