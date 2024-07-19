if vim.g.shadowvim then
	-- Jump to Definition (⌃⌘J).
	vim.cmd("map gd <Cmd>SVPress <LT>C-D-j><CR>")
	-- Find Selected Symbol in Workspace (⌃⇧⌘J).
	vim.cmd("map gr <Cmd>SVPress <LT>C-S-D-f><CR>")
	-- Show the Quick Help pop-up for the symbol at the caret location (<kbd>⌥ + Left Click</kbd>).
	vim.cmd("map K <Cmd>SVPress <LT>M-LeftMouse><CR>")
else
	require("gregsz/plugins")
	require("gregsz/remap")
	require("gregsz/set")
	require("gregsz/plugins/lsp")
	require("gregsz/plugins/harpoon")
	require("gregsz/plugins/fugitive")
	require("gregsz/plugins/magma")
	require("gregsz/plugins/telescope")
	require("gregsz/plugins/treesitter")
	require("gregsz/plugins/undotree")
	require("gregsz/plugins/colors")
	require("gregsz/plugins/zk")
end
