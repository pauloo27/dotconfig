function confirm(opts)
	opts = opts or {}

	window({
		title = opts.title or "SMSH: Confirm",
		enable_vim_keys = opts.enable_vim_keys ~= false,
		enable_esc_as_exit = opts.enable_esc_as_exit ~= false,
		exit_on_close = opts.exit_on_close,
		present = opts.present,
		root = {
			type = "container",
			orientation = "vertical",
			children = {
				{
					type = "label",
					text = opts.message or "Are you sure?",
					tooltip = opts.tooltip or "",
				},
				{
					type = "button",
					text = opts.yes_text or "Yes",
					tooltip = opts.yes_tooltip or "Yes!",
					actions = {
						{
							type = "exit_with_code",
							value = "0",
						},
					},
				},
				{
					type = "button",
					text = opts.no_text or "No",
					tooltip = opts.no_tooltip or "No",
					actions = {
						{
							type = "exit_with_code",
							value = "1",
						},
					},
				},
			},
		},
	})
end

function prompt(opts)
	opts = opts or {}

	window({
		title = opts.title or "SMSH: Prompt",
		enable_vim_keys = opts.enable_vim_keys or false,
		enable_esc_as_exit = opts.enable_esc_as_exit ~= false,
		exit_on_close = opts.exit_on_close,
		present = opts.present,
		root = {
			type = "container",
			orientation = opts.orientation or "horizontal",
			children = {
				{
					type = "entry",
					text = opts.default_text or "",
					tooltip = opts.tooltip or "Type here",
					actions = {
						{
							type = "print_value_to_stdout",
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
end
