return {
	-- config = function()
		local lspconfig = require("lspconfig")
		local configs = require("lspconfig.configs")

		-- Check if the config is already defined (useful when reloading this file)
		if not configs.jails then
			configs.jails = {
				default_config = {
					cmd = { "/Users/varomix/dev/JAI_DEV/Jails/bin/jails" },
					filetypes = { "jai" },
					root_dir = function(fname)
						return lspconfig.util.find_git_ancestor(fname)
					end,
					settings = {},
				},
			}
		end

		-- lspconfig.jails.setup({}),
	-- end,
}
