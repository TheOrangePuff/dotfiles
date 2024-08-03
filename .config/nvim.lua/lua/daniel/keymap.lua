local keymap = vim.keymap

-- TODO: confirm that this is still needed when leader is mapped to this
keymap.set("n", "<SPACE>", "<NOP>")
keymap.set("n", "c", '"_c')

-- Split nav
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Replace all aliased to S
keymap.set("n", "S", ":%s//g<Left><Left>")

-- Save file as sudo on files that require root permission
keymap.set("c", "w!!", "execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")
