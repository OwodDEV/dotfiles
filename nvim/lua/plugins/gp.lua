local M = {}

function M.setup()
	require("gp").setup({

		chat_shortcut_respond = { modes = { "n" }, shortcut = "<CR>" },

		chat_user_prefix = "## PROMPT",
		chat_assistant_prefix = { "### AI" },	
		command_prompt_prefix_template = "PROMPT: ",
		chat_template = require("gp.defaults").short_chat_template,

		style_chat_finder_border = "rounded",
		style_popup_border = "rounded",
		style_popup_margin_bottom = 5,
		style_popup_margin_left = 0,
		style_popup_margin_right = 0,
		style_popup_margin_top = 2,
		style_popup_max_width = 80,


		providers = {
			openai = {
				disable = true,
			},
			googleai = {
				endpoint = "https://generativelanguage.googleapis.com/v1beta/models/{{model}}:streamGenerateContent?key={{secret}}",
				secret = os.getenv("GOOGLEAI_API_KEY"),
			},
		},

		agents = {
			{
				name = "ChatGPT4o",
				disable = true,
			},
			{
				name = "ChatGPT3-5",
				disable = true,
			},
			{
				name = "Gemini 1.5 Flash",
				provider = "googleai",
				chat = true,
				command = true,
				model = { model = "gemini-1.5-flash-latest" },
				system_prompt = "",
			},
		},

	})
end
return M
