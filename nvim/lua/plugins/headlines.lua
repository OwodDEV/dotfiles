local M = {}

function M.setup()
	require("headlines").setup({
		markdown = {
			headline_highlights = {
				"Headline1",
				"Headline2",
				"Headline3",
				"Headline4",
				"Headline5",
				"Headline6",
			},
			codeblock_highlight = "CodeBlock",
			dash_highlight = "Dash",
			quote_highlight = "Quote",

			bullets = {},

			fat_headlines = false,
		}
	})
end
return M
