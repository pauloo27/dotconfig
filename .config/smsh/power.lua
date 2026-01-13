load_css("./style.css")

window({
	title = "SMSH: Power",
	enable_vim_keys = true,
	enable_esc_as_exit = true,
	present = true,
	exit_on_close = true,
	root = {
		type = "container",
		orientation = "vertical",
		children = {
			{
				type = "button",
				text = "",
				tooltip = "Lock",
				actions = {
					{
						type = "shell",
						value = "swaylock",
					},
					{
						type = "exit_with_code",
						value = "0",
					},
				},
			},
			{
				type = "button",
				text = "",
				tooltip = "Shutdown",
				actions = {
					{
						type = "shell",
						value = 'smsh ~/.config/smsh/confirm.lua ~/.config/smsh/style.css && ~/.config/scripts/run-unless-pacman "shutdown now"',
					},
					{
						type = "exit_with_code",
						value = "0",
					},
				},
			},
			{
				type = "button",
				text = "",
				tooltip = "Reboot",
				actions = {
					{
						type = "shell",
						value = 'smsh ~/.config/smsh/confirm.lua ~/.config/smsh/style.css && ~/.config/scripts/run-unless-pacman "reboot"',
					},
					{
						type = "exit_with_code",
						value = "0",
					},
				},
			},
			{
				type = "button",
				text = "",
				tooltip = "Reboot into Windows",
				actions = {
					{
						type = "shell",
						value = 'smsh ~/.config/smsh/confirm.lua ~/.config/smsh/style.css && ~/.config/scripts/run-unless-pacman "~/.config/scripts/reboot-into-windows.sh"',
					},
					{
						type = "exit_with_code",
						value = "0",
					},
				},
			},
			{
				type = "button",
				text = "󰗽",
				tooltip = "Logout",
				actions = {
					{
						type = "shell",
						value = 'smsh ~/.config/smsh/confirm.lua ~/.config/smsh/style.css && ~/.config/scripts/run-unless-pacman "hyprctl dispatch exit exit || swaymsg exit"',
					},
					{
						type = "exit_with_code",
						value = "0",
					},
				},
			},
		},
	},
})
