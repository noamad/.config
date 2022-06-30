local luasnip = require 'luasnip'
require("nvim-autopairs").setup {}


local cmp = require 'cmp'
cmp.setup{
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<C-w>"] = cmp.mapping.confirm {
			select = true,
		},
		["<C-Space>"] = cmp.mapping.complete(),
                ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                                cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                                luasnip.expand_or_jump()
                        else
                                fallback()
                        end
                end, {'i', 's' }),
		
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'buffer', keyword_length = 3 },
		{ name = 'luasnip' },
		{ name = 'path' },
	}),
	experimental = {
		native_menu = false,
		ghost_text = true,
	},
}
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' } 
	}, {
		{ name = 'cmdline' }
	})
})

local lspconfig = require 'lspconfig'
-- nvim cmp supports additional capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable following language servers
local servers = {'pyright' , 'rust_analyzer' }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end
